.class public abstract Lcom/shabakaty/downloader/b04;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/b04$d;,
        Lcom/shabakaty/downloader/b04$c;,
        Lcom/shabakaty/downloader/b04$b;,
        Lcom/shabakaty/downloader/b04$a;,
        Lcom/shabakaty/downloader/b04$e;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qm3;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm3;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b04;->a:Lcom/shabakaty/downloader/qm3;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/b04;->b:J

    .line 4
    iput-wide p4, p0, Lcom/shabakaty/downloader/b04;->c:J

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ur3;)Lcom/shabakaty/downloader/qm3;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b04;->a:Lcom/shabakaty/downloader/qm3;

    return-object p1
.end method
