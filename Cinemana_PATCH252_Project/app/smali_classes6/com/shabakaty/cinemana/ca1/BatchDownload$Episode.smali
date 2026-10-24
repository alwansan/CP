.class Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;
.super Ljava/lang/Object;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Episode"
.end annotation


# instance fields
.field brief:Ljava/lang/Object;

.field error:Ljava/lang/String;

.field volatile existing:Z

.field generation:I

.field id:Ljava/lang/String;

.field job:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

.field volatile loading:Z

.field manual:I

.field model:Ljava/lang/Object;

.field number:Ljava/lang/String;

.field queued:Z

.field season:Ljava/lang/String;

.field selected:Z

.field submitted:Z

.field title:Ljava/lang/String;

.field volatile variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->manual:I

    return-void
.end method
