.class Lme/android/browser/homepages/Template$SimpleEntity;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lme/android/browser/homepages/Template$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/homepages/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleEntity"
.end annotation


# instance fields
.field mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lme/android/browser/homepages/Template$SimpleEntity;->mKey:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lme/android/browser/homepages/Template$EntityData;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "params"    # Lme/android/browser/homepages/Template$EntityData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lme/android/browser/homepages/Template$SimpleEntity;->mKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lme/android/browser/homepages/Template$EntityData;->writeValue(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 91
    return-void
.end method