.class public final Lcom/shabakaty/downloader/r76;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/z76;

    invoke-direct {v0}, Lcom/shabakaty/downloader/z76;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/r76;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/shabakaty/downloader/a86;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a86;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/r76;->b:Ljava/lang/Iterable;

    return-void
.end method
