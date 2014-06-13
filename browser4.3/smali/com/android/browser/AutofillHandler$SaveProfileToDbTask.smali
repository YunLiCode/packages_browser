.class Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;
.super Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveProfileToDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask",
        "<",
        "Landroid/webkit/WebSettingsClassic$AutoFillProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutofillHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const-class v0, Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V
    .locals 0
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;-><init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V

    .line 255
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 252
    check-cast p1, [Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettingsClassic$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/webkit/WebSettingsClassic$AutoFillProfile;)Ljava/lang/Void;
    .locals 4
    .param p1, "values"    # [Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    # getter for: Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$100(Lcom/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    .line 260
    iget-object v2, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    monitor-enter v2

    .line 261
    :try_start_0
    sget-boolean v1, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    # getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 264
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
    iget-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    iget-object v3, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    # getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v3}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/browser/AutoFillProfileDatabase;->addOrUpdateProfile(ILandroid/webkit/WebSettingsClassic$AutoFillProfile;)V

    .line 264
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 252
    check-cast p1, [Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettingsClassic$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
