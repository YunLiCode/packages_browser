.class Lcom/android/browser/Tab$ErrorDialog;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorDialog"
.end annotation


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mError:I

.field public final mTitle:I

.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;ILjava/lang/String;I)V
    .locals 0
    .param p2, "title"    # I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "error"    # I

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/browser/Tab$ErrorDialog;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p2, p0, Lcom/android/browser/Tab$ErrorDialog;->mTitle:I

    .line 262
    iput-object p3, p0, Lcom/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    .line 263
    iput p4, p0, Lcom/android/browser/Tab$ErrorDialog;->mError:I

    .line 264
    return-void
.end method
