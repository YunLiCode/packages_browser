.class public final enum Lme/android/browser/Tab$SecurityState;
.super Ljava/lang/Enum;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/android/browser/Tab$SecurityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lme/android/browser/Tab$SecurityState;

.field public static final enum SECURITY_STATE_BAD_CERTIFICATE:Lme/android/browser/Tab$SecurityState;

.field public static final enum SECURITY_STATE_MIXED:Lme/android/browser/Tab$SecurityState;

.field public static final enum SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

.field public static final enum SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lme/android/browser/Tab$SecurityState;

    const-string v1, "SECURITY_STATE_NOT_SECURE"

    invoke-direct {v0, v1, v2}, Lme/android/browser/Tab$SecurityState;-><init>(Ljava/lang/String;I)V

    .line 114
    sput-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    .line 115
    new-instance v0, Lme/android/browser/Tab$SecurityState;

    const-string v1, "SECURITY_STATE_SECURE"

    invoke-direct {v0, v1, v3}, Lme/android/browser/Tab$SecurityState;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;

    .line 118
    new-instance v0, Lme/android/browser/Tab$SecurityState;

    const-string v1, "SECURITY_STATE_MIXED"

    invoke-direct {v0, v1, v4}, Lme/android/browser/Tab$SecurityState;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lme/android/browser/Tab$SecurityState;

    .line 122
    new-instance v0, Lme/android/browser/Tab$SecurityState;

    const-string v1, "SECURITY_STATE_BAD_CERTIFICATE"

    invoke-direct {v0, v1, v5}, Lme/android/browser/Tab$SecurityState;-><init>(Ljava/lang/String;I)V

    .line 124
    sput-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lme/android/browser/Tab$SecurityState;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lme/android/browser/Tab$SecurityState;

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    aput-object v1, v0, v2

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;

    aput-object v1, v0, v3

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lme/android/browser/Tab$SecurityState;

    aput-object v1, v0, v4

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lme/android/browser/Tab$SecurityState;

    aput-object v1, v0, v5

    sput-object v0, Lme/android/browser/Tab$SecurityState;->ENUM$VALUES:[Lme/android/browser/Tab$SecurityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/android/browser/Tab$SecurityState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lme/android/browser/Tab$SecurityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/android/browser/Tab$SecurityState;

    return-object v0
.end method

.method public static values()[Lme/android/browser/Tab$SecurityState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lme/android/browser/Tab$SecurityState;->ENUM$VALUES:[Lme/android/browser/Tab$SecurityState;

    array-length v1, v0

    new-array v2, v1, [Lme/android/browser/Tab$SecurityState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
