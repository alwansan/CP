.class public final Lcom/shabakaty/downloader/zm2$a;
.super Lcom/shabakaty/downloader/di1;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zm2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/di1;-><init>(Lcom/shabakaty/downloader/nn4;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/zm2$a;->c:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/nn4;->g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    iget-object p1, p2, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    iput-object p1, p2, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public m(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nn4;->m(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/nn4;->o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;

    .line 2
    iget-object p1, p2, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    iget-object p3, p0, Lcom/shabakaty/downloader/zm2$a;->c:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/nn4$c;->r:Ljava/lang/Object;

    iput-object p1, p2, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method
