.class Lme/android/browser/PageDialogsHandler$6;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PageDialogsHandler;->showSSLCertificate(Lme/android/browser/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PageDialogsHandler;

.field private final synthetic val$tab:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/PageDialogsHandler;Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$6;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lme/android/browser/PageDialogsHandler$6;->val$tab:Lme/android/browser/Tab;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$6;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v3}, Lme/android/browser/PageDialogsHandler;->access$8(Lme/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)V

    .line 255
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$6;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v3}, Lme/android/browser/PageDialogsHandler;->access$9(Lme/android/browser/PageDialogsHandler;Lme/android/browser/Tab;)V

    .line 257
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$6;->this$0:Lme/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lme/android/browser/PageDialogsHandler$6;->val$tab:Lme/android/browser/Tab;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lme/android/browser/PageDialogsHandler;->showPageInfo(Lme/android/browser/Tab;ZLjava/lang/String;)V

    .line 258
    return-void
.end method
