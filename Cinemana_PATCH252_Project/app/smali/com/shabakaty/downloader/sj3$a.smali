.class public final Lcom/shabakaty/downloader/sj3$a;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/l21;

.field public final b:Lcom/shabakaty/downloader/qn4;

.field public final c:Lcom/shabakaty/downloader/a55;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l21;Lcom/shabakaty/downloader/qn4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sj3$a;->a:Lcom/shabakaty/downloader/l21;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sj3$a;->b:Lcom/shabakaty/downloader/qn4;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/a55;

    const/16 p2, 0x40

    new-array p2, p2, [B

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    return-void
.end method
