.class public final Lcom/shabakaty/downloader/a62;
.super Lcom/shabakaty/downloader/c0;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/c0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final v:Lcom/shabakaty/downloader/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/c0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final t:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a62;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/shabakaty/downloader/a62;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/shabakaty/downloader/a62;->v:Lcom/shabakaty/downloader/c0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/c0;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/a62;->t:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/a62;->u:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a62;->t:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/a62;->u:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
