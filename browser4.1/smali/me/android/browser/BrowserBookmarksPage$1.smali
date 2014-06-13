.class Lme/android/browser/BrowserBookmarksPage$1;
.super Ljava/lang/ThreadLocal;
.source "BrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/graphics/BitmapFactory$Options;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lme/android/browser/BrowserBookmarksPage$1;->initialValue()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method
