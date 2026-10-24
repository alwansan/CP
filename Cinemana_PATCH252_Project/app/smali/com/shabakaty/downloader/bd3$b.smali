.class public final Lcom/shabakaty/downloader/bd3$b;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bd3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bd3$b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/xd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xd1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xd1$b;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd1$b;->b()Lcom/shabakaty/downloader/xd1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/xd1;Lcom/shabakaty/downloader/bd3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/bd3$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/bd3$b;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    iget-object p1, p1, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xd1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xd1;->hashCode()I

    move-result v0

    return v0
.end method
