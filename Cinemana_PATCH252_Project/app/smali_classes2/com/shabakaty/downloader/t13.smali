.class public final Lcom/shabakaty/downloader/t13;
.super Ljava/lang/Object;
.source "JavaNullabilityAnnotationSettings.kt"

# interfaces
.implements Lcom/shabakaty/downloader/s13;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/s13<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/fi1;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t13;->b:Ljava/util/Map;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/yj2;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/t13$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/t13$a;-><init>(Lcom/shabakaty/downloader/t13;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yj2;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/t13;->c:Lcom/shabakaty/downloader/rr2;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/fi1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t13;->c:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
