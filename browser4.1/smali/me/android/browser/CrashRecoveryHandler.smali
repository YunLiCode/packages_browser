.class public Lme/android/browser/CrashRecoveryHandler;
.super Ljava/lang/Object;
.source "CrashRecoveryHandler.java"


# static fields
.field private static final BACKUP_DELAY:J = 0x1f4L

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOGTAG:Ljava/lang/String; = "BrowserCrashRecovery"

.field private static final LOGV_ENABLED:Z = false

.field private static final MSG_CLEAR_STATE:I = 0x2

.field private static final MSG_PRELOAD_STATE:I = 0x3

.field private static final MSG_WRITE_STATE:I = 0x1

.field private static final PROMPT_INTERVAL:J = 0x493e0L

.field private static final STATE_FILE:Ljava/lang/String; = "browser_state.parcel"

.field private static sInstance:Lme/android/browser/CrashRecoveryHandler;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mController:Lme/android/browser/Controller;

.field private mCreateState:Ljava/lang/Runnable;

.field private mDidPreload:Z

.field private mForegroundHandler:Landroid/os/Handler;

.field private mIsPreloading:Z

.field private mRecoveryState:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lme/android/browser/Controller;)V
    .locals 2
    .param p1, "controller"    # Lme/android/browser/Controller;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lme/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    .line 60
    iput-boolean v0, p0, Lme/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 115
    new-instance v0, Lme/android/browser/CrashRecoveryHandler$1;

    invoke-direct {v0, p0}, Lme/android/browser/CrashRecoveryHandler$1;-><init>(Lme/android/browser/CrashRecoveryHandler;)V

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    .line 77
    iput-object p1, p0, Lme/android/browser/CrashRecoveryHandler;->mController:Lme/android/browser/Controller;

    .line 78
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v0}, Lme/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lme/android/browser/CrashRecoveryHandler$2;

    invoke-static {}, Lme/android/browser/BackgroundHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lme/android/browser/CrashRecoveryHandler$2;-><init>(Lme/android/browser/CrashRecoveryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/CrashRecoveryHandler;)Lme/android/browser/Controller;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mController:Lme/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lme/android/browser/CrashRecoveryHandler;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lme/android/browser/CrashRecoveryHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lme/android/browser/CrashRecoveryHandler;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lme/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lme/android/browser/CrashRecoveryHandler;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lme/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$7(Lme/android/browser/CrashRecoveryHandler;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lme/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    return-void
.end method

.method static synthetic access$8(Lme/android/browser/CrashRecoveryHandler;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lme/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    return-void
.end method

.method public static getInstance()Lme/android/browser/CrashRecoveryHandler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lme/android/browser/CrashRecoveryHandler;->sInstance:Lme/android/browser/CrashRecoveryHandler;

    return-object v0
.end method

.method public static initialize(Lme/android/browser/Controller;)Lme/android/browser/CrashRecoveryHandler;
    .locals 1
    .param p0, "controller"    # Lme/android/browser/Controller;

    .prologue
    .line 64
    sget-object v0, Lme/android/browser/CrashRecoveryHandler;->sInstance:Lme/android/browser/CrashRecoveryHandler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lme/android/browser/CrashRecoveryHandler;

    invoke-direct {v0, p0}, Lme/android/browser/CrashRecoveryHandler;-><init>(Lme/android/browser/Controller;)V

    sput-object v0, Lme/android/browser/CrashRecoveryHandler;->sInstance:Lme/android/browser/CrashRecoveryHandler;

    .line 69
    :goto_0
    sget-object v0, Lme/android/browser/CrashRecoveryHandler;->sInstance:Lme/android/browser/CrashRecoveryHandler;

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lme/android/browser/CrashRecoveryHandler;->sInstance:Lme/android/browser/CrashRecoveryHandler;

    iput-object p0, v0, Lme/android/browser/CrashRecoveryHandler;->mController:Lme/android/browser/Controller;

    goto :goto_0
.end method

.method private declared-synchronized loadCrashState()Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lme/android/browser/CrashRecoveryHandler;->shouldRestore()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    if-nez v12, :cond_1

    move-object v9, v11

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 155
    :cond_1
    :try_start_1
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    .line 156
    .local v0, "browserSettings":Lme/android/browser/BrowserSettings;
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lme/android/browser/BrowserSettings;->setLastRunPaused(Z)V

    .line 157
    const/4 v9, 0x0

    .line 158
    .local v9, "state":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 159
    .local v7, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x0

    .line 161
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lme/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "browser_state.parcel"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v10, "stateFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .local v6, "fin":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v3, "dataStream":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x1000

    new-array v1, v12, [B

    .line 166
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-gtz v8, :cond_2

    .line 169
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 170
    .local v2, "data":[B
    const/4 v12, 0x0

    array-length v13, v2

    invoke-virtual {v7, v2, v12, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 171
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 172
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 173
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v12

    if-nez v12, :cond_5

    .line 181
    :try_start_4
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    if-eqz v6, :cond_0

    .line 184
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v11

    goto :goto_0

    .line 167
    .end local v2    # "data":[B
    :cond_2
    const/4 v12, 0x0

    :try_start_6
    invoke-virtual {v3, v1, v12, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 176
    .end local v1    # "buffer":[B
    .end local v3    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    :catch_1
    move-exception v12

    move-object v5, v6

    .line 181
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "stateFile":Ljava/io/File;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_7
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 182
    if-eqz v5, :cond_3

    .line 184
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_3
    :goto_3
    move-object v9, v11

    .line 188
    goto :goto_0

    .line 178
    :catch_2
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_9
    const-string v12, "BrowserCrashRecovery"

    const-string v13, "Failed to recover state!"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 181
    :try_start_a
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 182
    if-eqz v5, :cond_3

    .line 184
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 185
    :catch_3
    move-exception v12

    goto :goto_3

    .line 180
    .end local v4    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 181
    :goto_5
    :try_start_c
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 182
    if-eqz v5, :cond_4

    .line 184
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 187
    :cond_4
    :goto_6
    :try_start_e
    throw v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 152
    .end local v0    # "browserSettings":Lme/android/browser/BrowserSettings;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "parcel":Landroid/os/Parcel;
    .end local v9    # "state":Landroid/os/Bundle;
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 181
    .restart local v0    # "browserSettings":Lme/android/browser/BrowserSettings;
    .restart local v1    # "buffer":[B
    .restart local v2    # "data":[B
    .restart local v3    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "parcel":Landroid/os/Parcel;
    .restart local v8    # "read":I
    .restart local v9    # "state":Landroid/os/Bundle;
    .restart local v10    # "stateFile":Ljava/io/File;
    :cond_5
    :try_start_f
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 182
    if-eqz v6, :cond_6

    .line 184
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 185
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "buffer":[B
    .end local v2    # "data":[B
    .end local v3    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    .end local v10    # "stateFile":Ljava/io/File;
    :catch_5
    move-exception v12

    goto :goto_3

    :catch_6
    move-exception v12

    goto :goto_6

    .line 180
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "stateFile":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .line 178
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 176
    .end local v10    # "stateFile":Ljava/io/File;
    :catch_8
    move-exception v12

    goto :goto_2

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "data":[B
    .restart local v3    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "read":I
    .restart local v10    # "stateFile":Ljava/io/File;
    :cond_6
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private shouldRestore()Z
    .locals 7

    .prologue
    .line 139
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    .line 140
    .local v0, "browserSettings":Lme/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getLastRecovered()J

    move-result-wide v1

    .line 141
    .local v1, "lastRecovered":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 142
    .local v3, "timeSinceLastRecover":J
    const-wide/32 v5, 0x493e0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 143
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->wasLastRunPaused()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    .line 142
    goto :goto_0
.end method

.method private updateLastRecovered(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 147
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    .line 148
    .local v0, "browserSettings":Lme/android/browser/BrowserSettings;
    invoke-virtual {v0, p1, p2}, Lme/android/browser/BrowserSettings;->setLastRecovered(J)V

    .line 149
    return-void
.end method


# virtual methods
.method public backupState()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lme/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method public clearState()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lme/android/browser/CrashRecoveryHandler;->updateLastRecovered(J)V

    .line 136
    return-void
.end method

.method public preloadCrashState()V
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lme/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    if-eqz v0, :cond_0

    .line 211
    monitor-exit p0

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startRecovery(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lme/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    if-nez v0, :cond_1

    .line 192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-boolean v0, p0, Lme/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lme/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 202
    :cond_0
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    :goto_1
    invoke-direct {p0, v0, v1}, Lme/android/browser/CrashRecoveryHandler;->updateLastRecovered(J)V

    .line 204
    iget-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mController:Lme/android/browser/Controller;

    iget-object v1, p0, Lme/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lme/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 206
    return-void

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 203
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method declared-synchronized writeState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 229
    .local v2, "p":Landroid/os/Parcel;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lme/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 231
    const-string v6, "browser_state.parcel.journal"

    .line 230
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .local v4, "stateJournal":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 233
    .local v1, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 234
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 235
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lme/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 236
    const-string v6, "browser_state.parcel"

    .line 235
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v3, "stateFile":Ljava/io/File;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 241
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "stateFile":Ljava/io/File;
    .end local v4    # "stateJournal":Ljava/io/File;
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "BrowserCrashRecovery"

    const-string v6, "Failed to save persistent state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 245
    .restart local v2    # "p":Landroid/os/Parcel;
    :catchall_1
    move-exception v5

    .line 246
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
