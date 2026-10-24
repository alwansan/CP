.class public final Lcom/shabakaty/downloader/ke1;
.super Ljava/lang/Object;
.source "FlgTransport.java"


# static fields
.field public static final d:Lcom/shabakaty/downloader/i7;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/pq4;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/shabakaty/downloader/mq4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mq4<",
            "Lcom/shabakaty/downloader/qb3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ke1;->d:Lcom/shabakaty/downloader/i7;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pj3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/pq4;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ke1;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ke1;->b:Lcom/shabakaty/downloader/pj3;

    return-void
.end method
