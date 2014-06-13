.class public Lme/android/browser/UploadHandler;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# instance fields
.field private mCameraFilePath:Ljava/lang/String;

.field private mCaughtActivityNotFoundException:Z

.field private mController:Lme/android/browser/Controller;

.field private mHandled:Z

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lme/android/browser/Controller;)V
    .locals 0
    .param p1, "controller"    # Lme/android/browser/Controller;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lme/android/browser/UploadHandler;->mController:Lme/android/browser/Controller;

    .line 49
    return-void
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "cameraIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 244
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 246
    .local v2, "externalDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "cameraDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    iput-object v3, p0, Lme/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    .line 251
    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lme/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    return-object v1
.end method

.method private varargs createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "chooser":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.extra.TITLE"

    .line 230
    iget-object v2, p0, Lme/android/browser/UploadHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v2}, Lme/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 231
    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    return-object v0
.end method

.method private createDefaultOpenableIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {p0}, Lme/android/browser/UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lme/android/browser/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 221
    invoke-direct {p0}, Lme/android/browser/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    .line 220
    invoke-direct {p0, v2}, Lme/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "chooser":Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    return-object v0
.end method

.method private createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    return-object v0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 196
    :try_start_0
    iget-object v2, p0, Lme/android/browser/UploadHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v2}, Lme/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lme/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    .line 202
    iget-object v2, p0, Lme/android/browser/UploadHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v2}, Lme/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lme/android/browser/UploadHandler;->createDefaultOpenableIntent()Landroid/content/Intent;

    move-result-object v3

    .line 203
    const/4 v4, 0x4

    .line 202
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 204
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e2":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lme/android/browser/UploadHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v2}, Lme/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080004

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lme/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    return-object v0
.end method

.method handled()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lme/android/browser/UploadHandler;->mHandled:Z

    return v0
.end method

.method onResult(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 61
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lme/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    if-eqz v2, :cond_0

    .line 64
    iput-boolean v5, p0, Lme/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    .line 91
    :goto_0
    return-void

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    if-eq p1, v3, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, "result":Landroid/net/Uri;
    :goto_1
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-ne p1, v3, :cond_2

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lme/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "cameraFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lme/android/browser/UploadHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v2}, Lme/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 84
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .end local v0    # "cameraFile":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lme/android/browser/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lme/android/browser/UploadHandler;->mHandled:Z

    .line 90
    iput-boolean v5, p0, Lme/android/browser/UploadHandler;->mCaughtActivityNotFoundException:Z

    goto :goto_0

    .line 69
    .end local v1    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v4, "image/*"

    .line 96
    .local v4, "imageMimeType":Ljava/lang/String;
    const-string v15, "video/*"

    .line 97
    .local v15, "videoMimeType":Ljava/lang/String;
    const-string v2, "audio/*"

    .line 98
    .local v2, "audioMimeType":Ljava/lang/String;
    const-string v7, "capture"

    .line 99
    .local v7, "mediaSourceKey":Ljava/lang/String;
    const-string v9, "camera"

    .line 100
    .local v9, "mediaSourceValueCamera":Ljava/lang/String;
    const-string v10, "filesystem"

    .line 101
    .local v10, "mediaSourceValueFileSystem":Ljava/lang/String;
    const-string v8, "camcorder"

    .line 102
    .local v8, "mediaSourceValueCamcorder":Ljava/lang/String;
    const-string v11, "microphone"

    .line 106
    .local v11, "mediaSourceValueMicrophone":Ljava/lang/String;
    const-string v6, "filesystem"

    .line 108
    .local v6, "mediaSource":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 192
    :goto_0
    return-void

    .line 113
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/android/browser/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 116
    const-string v16, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "params":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v12, v14, v16

    .line 119
    .local v12, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 120
    move-object/from16 v6, p3

    .line 123
    :cond_1
    const-string v16, "filesystem"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 128
    array-length v0, v14

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 140
    :cond_2
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/android/browser/UploadHandler;->mCameraFilePath:Ljava/lang/String;

    .line 142
    const-string v16, "image/*"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 143
    const-string v16, "camera"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 146
    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_3
    aget-object v13, v14, v16

    .line 129
    .local v13, "p":Ljava/lang/String;
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "keyValue":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 132
    const-string v18, "capture"

    const/16 v19, 0x0

    aget-object v19, v5, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 133
    const/16 v18, 0x1

    aget-object v6, v5, v18

    .line 128
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 152
    .end local v5    # "keyValue":[Ljava/lang/String;
    .end local v13    # "p":Ljava/lang/String;
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createCameraIntent()Landroid/content/Intent;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 153
    .local v3, "chooser":Landroid/content/Intent;
    const-string v16, "android.intent.extra.INTENT"

    const-string v17, "image/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 157
    .end local v3    # "chooser":Landroid/content/Intent;
    :cond_6
    const-string v16, "video/*"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 158
    const-string v16, "camcorder"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 161
    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 167
    :cond_7
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 168
    .restart local v3    # "chooser":Landroid/content/Intent;
    const-string v16, "android.intent.extra.INTENT"

    const-string v17, "video/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "chooser":Landroid/content/Intent;
    :cond_8
    const-string v16, "audio/*"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 173
    const-string v16, "microphone"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 176
    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 182
    :cond_9
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 183
    .restart local v3    # "chooser":Landroid/content/Intent;
    const-string v16, "android.intent.extra.INTENT"

    const-string v17, "audio/*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->createOpenableIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 191
    .end local v3    # "chooser":Landroid/content/Intent;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lme/android/browser/UploadHandler;->createDefaultOpenableIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lme/android/browser/UploadHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
