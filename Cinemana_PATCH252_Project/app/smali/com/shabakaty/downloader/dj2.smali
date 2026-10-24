.class public final Lcom/shabakaty/downloader/dj2;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Lcom/shabakaty/downloader/s43;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dj2$a;,
        Lcom/shabakaty/downloader/dj2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/s43<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/dj2$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/s43$a<",
            "TT;>;",
            "Lcom/shabakaty/downloader/dj2$a<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dj2;->a:Lcom/shabakaty/downloader/xv2;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dj2;->b:Ljava/util/Map;

    return-void
.end method
