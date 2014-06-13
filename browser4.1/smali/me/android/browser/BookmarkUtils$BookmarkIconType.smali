.class final enum Lme/android/browser/BookmarkUtils$BookmarkIconType;
.super Ljava/lang/Enum;
.source "BookmarkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BookmarkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BookmarkIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/android/browser/BookmarkUtils$BookmarkIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lme/android/browser/BookmarkUtils$BookmarkIconType;

.field public static final enum ICON_HOME_SHORTCUT:Lme/android/browser/BookmarkUtils$BookmarkIconType;

.field public static final enum ICON_INSTALLABLE_WEB_APP:Lme/android/browser/BookmarkUtils$BookmarkIconType;

.field public static final enum ICON_WIDGET:Lme/android/browser/BookmarkUtils$BookmarkIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;

    const-string v1, "ICON_INSTALLABLE_WEB_APP"

    invoke-direct {v0, v1, v2}, Lme/android/browser/BookmarkUtils$BookmarkIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ICON_INSTALLABLE_WEB_APP:Lme/android/browser/BookmarkUtils$BookmarkIconType;

    .line 52
    new-instance v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;

    const-string v1, "ICON_HOME_SHORTCUT"

    invoke-direct {v0, v1, v3}, Lme/android/browser/BookmarkUtils$BookmarkIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ICON_HOME_SHORTCUT:Lme/android/browser/BookmarkUtils$BookmarkIconType;

    .line 53
    new-instance v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;

    const-string v1, "ICON_WIDGET"

    invoke-direct {v0, v1, v4}, Lme/android/browser/BookmarkUtils$BookmarkIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lme/android/browser/BookmarkUtils$BookmarkIconType;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lme/android/browser/BookmarkUtils$BookmarkIconType;

    sget-object v1, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ICON_INSTALLABLE_WEB_APP:Lme/android/browser/BookmarkUtils$BookmarkIconType;

    aput-object v1, v0, v2

    sget-object v1, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ICON_HOME_SHORTCUT:Lme/android/browser/BookmarkUtils$BookmarkIconType;

    aput-object v1, v0, v3

    sget-object v1, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lme/android/browser/BookmarkUtils$BookmarkIconType;

    aput-object v1, v0, v4

    sput-object v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ENUM$VALUES:[Lme/android/browser/BookmarkUtils$BookmarkIconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/android/browser/BookmarkUtils$BookmarkIconType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;

    return-object v0
.end method

.method public static values()[Lme/android/browser/BookmarkUtils$BookmarkIconType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lme/android/browser/BookmarkUtils$BookmarkIconType;->ENUM$VALUES:[Lme/android/browser/BookmarkUtils$BookmarkIconType;

    array-length v1, v0

    new-array v2, v1, [Lme/android/browser/BookmarkUtils$BookmarkIconType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
