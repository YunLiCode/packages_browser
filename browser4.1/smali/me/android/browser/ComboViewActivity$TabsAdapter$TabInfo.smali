.class final Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "ComboViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/ComboViewActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 177
    iput-object p2, p0, Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 178
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lme/android/browser/ComboViewActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
