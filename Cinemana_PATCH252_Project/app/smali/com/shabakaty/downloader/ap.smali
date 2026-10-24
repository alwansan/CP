.class public final Lcom/shabakaty/downloader/ap;
.super Ljava/lang/Object;
.source "BundledHlsMediaChunkExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/jt1;


# static fields
.field public static final d:Lcom/shabakaty/downloader/ie3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/n91;

.field public final b:Lcom/shabakaty/downloader/wh1;

.field public final c:Lcom/shabakaty/downloader/qn4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ie3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ie3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ap;->d:Lcom/shabakaty/downloader/ie3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/n91;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/qn4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ap;->b:Lcom/shabakaty/downloader/wh1;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ap;->c:Lcom/shabakaty/downloader/qn4;

    return-void
.end method
