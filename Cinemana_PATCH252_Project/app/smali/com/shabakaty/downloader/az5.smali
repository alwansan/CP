.class public abstract Lcom/shabakaty/downloader/az5;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/shabakaty/downloader/az5;

.field public static final b:Lcom/shabakaty/downloader/az5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/o06;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o06;-><init>(Lcom/shabakaty/downloader/jl3;)V

    sput-object v0, Lcom/shabakaty/downloader/az5;->a:Lcom/shabakaty/downloader/az5;

    new-instance v0, Lcom/shabakaty/downloader/p06;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p06;-><init>(Lcom/shabakaty/downloader/jl3;)V

    sput-object v0, Lcom/shabakaty/downloader/az5;->b:Lcom/shabakaty/downloader/az5;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/jl3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
