.class public abstract Lcom/shabakaty/downloader/h57;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final a:Lcom/shabakaty/downloader/h57;

.field public static final b:Lcom/shabakaty/downloader/h57;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a67;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a67;-><init>(Lcom/shabakaty/downloader/f86;)V

    sput-object v0, Lcom/shabakaty/downloader/h57;->a:Lcom/shabakaty/downloader/h57;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/k57;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/k57;-><init>(Lcom/shabakaty/downloader/f86;)V

    sput-object v0, Lcom/shabakaty/downloader/h57;->b:Lcom/shabakaty/downloader/h57;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/f86;)V
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
