.class final Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;
.super Ljava/lang/Object;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cached"
.end annotation


# instance fields
.field final at:J

.field final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;->at:J

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;->variants:Ljava/util/List;

    return-void
.end method
