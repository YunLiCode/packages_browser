.class Lme/android/browser/Controller$5;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Controller;->getVisitedHistory(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Controller;

.field private final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lme/android/browser/Controller;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$5;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$5;->val$callback:Landroid/webkit/ValueCallback;

    .line 991
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme/android/browser/Controller$5;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 994
    iget-object v0, p0, Lme/android/browser/Controller$5;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ldroid/provider/Browser;->getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/android/browser/Controller$5;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute([Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 998
    iget-object v0, p0, Lme/android/browser/Controller$5;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 999
    return-void
.end method
