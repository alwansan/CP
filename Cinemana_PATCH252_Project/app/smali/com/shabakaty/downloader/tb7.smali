.class public final Lcom/shabakaty/downloader/tb7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/fp6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/fp6<",
        "Lcom/shabakaty/downloader/ub7;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/tb7;


# instance fields
.field public final r:Lcom/shabakaty/downloader/fp6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fp6<",
            "Lcom/shabakaty/downloader/ub7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/tb7;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/tb7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tb7;->s:Lcom/shabakaty/downloader/tb7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vb7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vb7;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/np6;

    .line 3
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/np6;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/tp6;->h(Lcom/shabakaty/downloader/fp6;)Lcom/shabakaty/downloader/fp6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/tb7;->r:Lcom/shabakaty/downloader/fp6;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb7;->r:Lcom/shabakaty/downloader/fp6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/fp6;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ub7;

    return-object v0
.end method
