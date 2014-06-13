.class Lme/android/browser/PageDialogsHandler$1;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Lme/android/browser/HttpAuthenticationDialog$OkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PageDialogsHandler;->showHttpAuthentication(Lme/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PageDialogsHandler;

.field private final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lme/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$1;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lme/android/browser/PageDialogsHandler$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$1;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/android/browser/PageDialogsHandler;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p3, p4}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$1;->this$0:Lme/android/browser/PageDialogsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$0(Lme/android/browser/PageDialogsHandler;Lme/android/browser/HttpAuthenticationDialog;)V

    .line 97
    return-void
.end method
