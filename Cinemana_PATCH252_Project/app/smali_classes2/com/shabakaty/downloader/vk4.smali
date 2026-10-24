.class public abstract Lcom/shabakaty/downloader/vk4;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public r:J

.field public s:Lcom/shabakaty/downloader/al4;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vz2;->r:Lcom/shabakaty/downloader/vz2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/shabakaty/downloader/vk4;->r:J

    iput-object v0, p0, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    return-void
.end method

.method public constructor <init>(JLcom/shabakaty/downloader/al4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shabakaty/downloader/vk4;->r:J

    iput-object p3, p0, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    return-void
.end method
