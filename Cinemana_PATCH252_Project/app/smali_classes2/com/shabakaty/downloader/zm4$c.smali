.class public final Lcom/shabakaty/downloader/zm4$c;
.super Lcom/shabakaty/downloader/af2;
.source "ThreadContext.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zm4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/en4;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Lcom/shabakaty/downloader/en4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/zm4$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/zm4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zm4$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zm4$c;->r:Lcom/shabakaty/downloader/zm4$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/en4;

    check-cast p2, Lcom/shabakaty/downloader/me0$b;

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/ym4;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/ym4;

    iget-object v0, p1, Lcom/shabakaty/downloader/en4;->d:Lcom/shabakaty/downloader/me0;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/ym4;->j(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/en4;->a:[Ljava/lang/Object;

    iget v2, p1, Lcom/shabakaty/downloader/en4;->c:I

    aput-object v0, v1, v2

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/en4;->b:[Lcom/shabakaty/downloader/ym4;

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lcom/shabakaty/downloader/en4;->c:I

    aput-object p2, v0, v2

    :cond_0
    return-object p1
.end method
