.class public final Lcom/shabakaty/downloader/pa4$b;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pa4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/pa4$b;->a:I

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/pa4$b;->b:J

    return-void
.end method

.method public constructor <init>(IJLcom/shabakaty/downloader/pa4$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/pa4$b;->a:I

    .line 6
    iput-wide p2, p0, Lcom/shabakaty/downloader/pa4$b;->b:J

    return-void
.end method
