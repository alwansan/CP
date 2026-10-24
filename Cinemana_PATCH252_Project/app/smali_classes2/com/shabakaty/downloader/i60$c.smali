.class public final Lcom/shabakaty/downloader/i60$c;
.super Lcom/shabakaty/downloader/af2;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/i60;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/qv4;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:[Lcom/shabakaty/downloader/me0;

.field public final synthetic s:Lcom/shabakaty/downloader/jo3;


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/jo3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/i60$c;->r:[Lcom/shabakaty/downloader/me0;

    iput-object p2, p0, Lcom/shabakaty/downloader/i60$c;->s:Lcom/shabakaty/downloader/jo3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qv4;

    check-cast p2, Lcom/shabakaty/downloader/me0$b;

    const-string v0, "$noName_0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/i60$c;->r:[Lcom/shabakaty/downloader/me0;

    iget-object v0, p0, Lcom/shabakaty/downloader/i60$c;->s:Lcom/shabakaty/downloader/jo3;

    iget v1, v0, Lcom/shabakaty/downloader/jo3;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/shabakaty/downloader/jo3;->r:I

    aput-object p2, p1, v1

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
