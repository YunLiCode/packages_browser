.class Lme/android/browser/Tab$3$2;
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

.field private final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lme/android/browser/Tab$3;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$3$2;->this$1:Lme/android/browser/Tab$3;

    iput-object p2, p0, Lme/android/browser/Tab$3$2;->val$resultMsg:Landroid/os/Message;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lme/android/browser/Tab$3$2;->val$resultMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 754
    return-void
.end method
