.class public final Lcom/shabakaty/downloader/yu3$a;
.super Ljava/lang/Object;
.source "RtpPacketReorderingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yu3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/wu3;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wu3;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yu3$a;->a:Lcom/shabakaty/downloader/wu3;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/yu3$a;->b:J

    return-void
.end method
