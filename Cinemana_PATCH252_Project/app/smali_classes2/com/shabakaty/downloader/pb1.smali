.class public final Lcom/shabakaty/downloader/pb1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l04;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l04<",
        "TT;>;"
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

.field public final b:Z

.field public final c:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l04;ZLcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;Z",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pb1;->a:Lcom/shabakaty/downloader/l04;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/pb1;->b:Z

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/pb1;->c:Lcom/shabakaty/downloader/tm1;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pb1$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/pb1$a;-><init>(Lcom/shabakaty/downloader/pb1;)V

    return-object v0
.end method
