.class public final Lcom/shabakaty/downloader/cq0;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l04;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l04<",
        "Lcom/shabakaty/downloader/n22;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/x93<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILcom/shabakaty/downloader/hn1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/x93<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cq0;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/cq0;->b:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/cq0;->c:I

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/cq0;->d:Lcom/shabakaty/downloader/hn1;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/n22;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cq0$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cq0$a;-><init>(Lcom/shabakaty/downloader/cq0;)V

    return-object v0
.end method
