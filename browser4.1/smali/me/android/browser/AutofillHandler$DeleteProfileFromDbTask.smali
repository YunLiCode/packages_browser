.class Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;
.super Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProfileFromDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/android/browser/AutofillHandler$AutoFillProfileDbTask",
        "<",
        "Ljava/lang/Integer;",
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
    .line 269
    const-class v0, Lme/android/browser/AutofillHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lme/android/browser/AutofillHandler;Landroid/os/Message;)V
    .locals 0
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    iput-object p1, p0, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->this$0:Lme/android/browser/AutofillHandler;

    .line 271
    invoke-direct {p0, p1, p2}, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;-><init>(Lme/android/browser/AutofillHandler;Landroid/os/Message;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 276
    iget-object v1, p0, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lme/android/browser/AutofillHandler;->access$0(Lme/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lme/android/browser/AutoFillProfileDatabase;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->mAutoFillProfileDb:Lme/android/browser/AutoFillProfileDatabase;

    .line 277
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    .local v0, "id":I
    sget-boolean v1, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 279
    :cond_0
    iget-object v1, p0, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->mAutoFillProfileDb:Lme/android/browser/AutoFillProfileDatabase;

    invoke-virtual {v1, v0}, Lme/android/browser/AutoFillProfileDatabase;->dropProfile(I)V

    .line 280
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lme/android/browser/AutofillHandler$DeleteProfileFromDbTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
