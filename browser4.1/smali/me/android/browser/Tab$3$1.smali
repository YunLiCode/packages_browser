.class Lme/android/browser/Tab$3$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab$3;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/Tab$3;

.field private final synthetic val$dialog:Z

.field private final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lme/android/browser/Tab$3;ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$3$1;->this$1:Lme/android/browser/Tab$3;

    iput-boolean p2, p0, Lme/android/browser/Tab$3$1;->val$dialog:Z

    iput-object p3, p0, Lme/android/browser/Tab$3$1;->val$resultMsg:Landroid/os/Message;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 745
    iget-object v0, p0, Lme/android/browser/Tab$3$1;->this$1:Lme/android/browser/Tab$3;

    iget-boolean v1, p0, Lme/android/browser/Tab$3$1;->val$dialog:Z

    iget-object v2, p0, Lme/android/browser/Tab$3$1;->val$resultMsg:Landroid/os/Message;

    # invokes: Lme/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lme/android/browser/Tab$3;->access$0(Lme/android/browser/Tab$3;ZLandroid/os/Message;)V

    .line 746
    return-void
.end method
