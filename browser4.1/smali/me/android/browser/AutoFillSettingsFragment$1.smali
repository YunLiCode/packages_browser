.class Lme/android/browser/AutoFillSettingsFragment$1;
.super Landroid/os/Handler;
.source "AutoFillSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/AutoFillSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/AutoFillSettingsFragment;


# direct methods
.method constructor <init>(Lme/android/browser/AutoFillSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/AutoFillSettingsFragment$1;->this$0:Lme/android/browser/AutoFillSettingsFragment;

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lme/android/browser/AutoFillSettingsFragment$1;->this$0:Lme/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v1}, Lme/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "c":Landroid/content/Context;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    if-eqz v0, :cond_0

    .line 125
    const v1, 0x7f08009a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    iget-object v1, p0, Lme/android/browser/AutoFillSettingsFragment$1;->this$0:Lme/android/browser/AutoFillSettingsFragment;

    # invokes: Lme/android/browser/AutoFillSettingsFragment;->closeEditor()V
    invoke-static {v1}, Lme/android/browser/AutoFillSettingsFragment;->access$2(Lme/android/browser/AutoFillSettingsFragment;)V

    goto :goto_0

    .line 132
    :pswitch_1
    if-eqz v0, :cond_0

    .line 133
    const v1, 0x7f08009b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
