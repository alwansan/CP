.class public final Lcom/shabakaty/downloader/et0;
.super Ljava/lang/Object;
.source "DifferenceCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/et0$c;

.field public d:Lcom/shabakaty/downloader/ln1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ln1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "+TT;>;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/ln1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ln1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "+TT;>;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object v0, p0, Lcom/shabakaty/downloader/et0;->a:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/et0;->b:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/et0$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/et0$c;-><init>(Lcom/shabakaty/downloader/et0;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/et0;->c:Lcom/shabakaty/downloader/et0$c;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/et0$b;->r:Lcom/shabakaty/downloader/et0$b;

    iput-object v0, p0, Lcom/shabakaty/downloader/et0;->d:Lcom/shabakaty/downloader/ln1;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/et0$a;->r:Lcom/shabakaty/downloader/et0$a;

    iput-object v0, p0, Lcom/shabakaty/downloader/et0;->e:Lcom/shabakaty/downloader/ln1;

    return-void
.end method
