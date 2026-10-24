.class public final Lcom/shabakaty/downloader/p22;
.super Ljava/lang/Object;
.source "IntTreePMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/p22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/p22<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/o22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o22<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p22;

    sget-object v1, Lcom/shabakaty/downloader/o22;->f:Lcom/shabakaty/downloader/o22;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p22;-><init>(Lcom/shabakaty/downloader/o22;)V

    sput-object v0, Lcom/shabakaty/downloader/p22;->b:Lcom/shabakaty/downloader/p22;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/o22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/o22<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/p22;->a:Lcom/shabakaty/downloader/o22;

    return-void
.end method
