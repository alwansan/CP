.class public final Lcom/shabakaty/downloader/ae1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l04;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l04<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/l04;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TR;",
            "Ljava/util/Iterator<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+TR;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TR;+",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ae1;->a:Lcom/shabakaty/downloader/l04;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ae1;->b:Lcom/shabakaty/downloader/tm1;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ae1;->c:Lcom/shabakaty/downloader/tm1;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ae1$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ae1$a;-><init>(Lcom/shabakaty/downloader/ae1;)V

    return-object v0
.end method
