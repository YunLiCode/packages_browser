.class Lme/android/browser/BrowserHistoryPage$3;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BrowserHistoryPage;->promptToClearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BrowserHistoryPage;

.field private final synthetic val$clear:Lme/android/browser/BrowserHistoryPage$ClearHistoryTask;


# direct methods
.method constructor <init>(Lme/android/browser/BrowserHistoryPage;Lme/android/browser/BrowserHistoryPage$ClearHistoryTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserHistoryPage$3;->this$0:Lme/android/browser/BrowserHistoryPage;

    iput-object p2, p0, Lme/android/browser/BrowserHistoryPage$3;->val$clear:Lme/android/browser/BrowserHistoryPage$ClearHistoryTask;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 301
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 302
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$3;->val$clear:Lme/android/browser/BrowserHistoryPage$ClearHistoryTask;

    invoke-virtual {v0}, Lme/android/browser/BrowserHistoryPage$ClearHistoryTask;->start()V

    .line 304
    :cond_0
    return-void
.end method
