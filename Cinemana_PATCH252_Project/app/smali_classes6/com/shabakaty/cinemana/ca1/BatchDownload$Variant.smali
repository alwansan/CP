.class Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;
.super Ljava/lang/Object;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field volatile checked:Z

.field height:I

.field label:Ljava/lang/String;

.field volatile probing:Z

.field quality:Ljava/lang/Object;

.field volatile size:J

.field sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    return-void
.end method
