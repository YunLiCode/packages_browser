.class Lme/android/browser/Tab$ErrorDialog;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorDialog"
.end annotation


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mError:I

.field public final mTitle:I

.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;ILjava/lang/String;I)V
    .locals 0
    .param p2, "title"    # I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "error"    # I

    .prologue
    .line 258
    iput-object p1, p0, Lme/android/browser/Tab$ErrorDialog;->this$0:Lme/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p2, p0, Lme/android/browser/Tab$ErrorDialog;->mTitle:I

    .line 260
    iput-object p3, p0, Lme/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    .line 261
    iput p4, p0, Lme/android/browser/Tab$ErrorDialog;->mError:I

    .line 262
    return-void
.end method
