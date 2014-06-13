.class Lme/android/browser/AutofillHandler$SaveProfileToDbTask;
.super Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveProfileToDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/android/browser/AutofillHandler$AutoFillProfileDbTask",
        "<",
        "Landroid/webkit/WebSettingsClassic$AutoFillProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lme/android/browser/AutofillHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const-class v0, Lme/android/browser/AutofillHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lme/android/browser/AutofillHandler;Landroid/os/Message;)V
    .locals 0
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    iput-object p1, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lme/android/browser/AutofillHandler;

    .line 254
    invoke-direct {p0, p1, p2}, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;-><init>(Lme/android/browser/AutofillHandler;Landroid/os/Message;)V

    .line 255
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/webkit/WebSettingsClassic$AutoFillProfile;)Ljava/lang/Void;
    .locals 4
    .param p1, "values"    # [Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .prologue
    .line 259
    iget-object v1, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lme/android/browser/AutofillHandler;->access$0(Lme/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lme/android/browser/AutoFillProfileDatabase;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->mAutoFillProfileDb:Lme/android/browser/AutoFillProfileDatabase;

    .line 260
    iget-object v2, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lme/android/browser/AutofillHandler;

    monitor-enter v2

    .line 261
    :try_start_0
    sget-boolean v1, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v1}, Lme/android/browser/AutofillHandler;->access$1(Lme/android/browser/AutofillHandler;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 262
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, p1, v1

    .line 263
    .local v0, "newProfile":Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    iget-object v1, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->mAutoFillProfileDb:Lme/android/browser/AutoFillProfileDatabase;

    iget-object v3, p0, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v3}, Lme/android/browser/AutofillHandler;->access$1(Lme/android/browser/AutofillHandler;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lme/android/browser/AutoFillProfileDatabase;->addOrUpdateProfile(ILandroid/webkit/WebSettingsClassic$AutoFillProfile;)V

    .line 260
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    invoke-virtual {p0, p1}, Lme/android/browser/AutofillHandler$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettingsClassic$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
