.class abstract Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;
.super Landroid/os/AsyncTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoFillProfileDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAutoFillProfileDb:Lme/android/browser/AutoFillProfileDatabase;

.field mCompleteMessage:Landroid/os/Message;

.field final synthetic this$0:Lme/android/browser/AutofillHandler;


# direct methods
.method public constructor <init>(Lme/android/browser/AutofillHandler;Landroid/os/Message;)V
    .locals 0
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 235
    .local p0, "this":Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;, "Lme/android/browser/AutofillHandler$AutoFillProfileDbTask<TT;>;"
    iput-object p1, p0, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->this$0:Lme/android/browser/AutofillHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 236
    iput-object p2, p0, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    .line 237
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/lang/Void;"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 241
    .local p0, "this":Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;, "Lme/android/browser/AutofillHandler$AutoFillProfileDbTask<TT;>;"
    iget-object v0, p0, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :cond_0
    iget-object v0, p0, Lme/android/browser/AutofillHandler$AutoFillProfileDbTask;->mAutoFillProfileDb:Lme/android/browser/AutoFillProfileDatabase;

    invoke-virtual {v0}, Lme/android/browser/AutoFillProfileDatabase;->close()V

    .line 245
    return-void
.end method
