.class Lme/android/browser/NavigationBarBase$1;
.super Ljava/lang/Object;
.source "NavigationBarBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavigationBarBase;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NavigationBarBase;

.field private final synthetic val$currentTab:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/NavigationBarBase;Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavigationBarBase$1;->this$0:Lme/android/browser/NavigationBarBase;

    iput-object p2, p0, Lme/android/browser/NavigationBarBase$1;->val$currentTab:Lme/android/browser/Tab;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lme/android/browser/NavigationBarBase$1;->this$0:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lme/android/browser/NavigationBarBase;->clearFocus()V

    .line 194
    iget-object v0, p0, Lme/android/browser/NavigationBarBase$1;->val$currentTab:Lme/android/browser/Tab;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lme/android/browser/NavigationBarBase$1;->this$0:Lme/android/browser/NavigationBarBase;

    iget-object v1, p0, Lme/android/browser/NavigationBarBase$1;->val$currentTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method
