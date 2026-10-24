.class public final Lcom/shabakaty/downloader/oq5;
.super Lcom/shabakaty/downloader/jo5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final r:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public s:I

.field public final synthetic t:Lcom/shabakaty/downloader/br5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br5;I)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    invoke-direct {p0}, Lcom/shabakaty/downloader/jo5;-><init>()V

    iget-object p1, p1, Lcom/shabakaty/downloader/br5;->t:[Ljava/lang/Object;

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/oq5;->s:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/oq5;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br5;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    iget-object v1, v1, Lcom/shabakaty/downloader/br5;->t:[Ljava/lang/Object;

    iget v2, p0, Lcom/shabakaty/downloader/oq5;->s:I

    aget-object v1, v1, v2

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ji5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/br5;->A:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/br5;->g(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/oq5;->s:I

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oq5;->a()V

    iget v0, p0, Lcom/shabakaty/downloader/oq5;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    iget-object v1, v1, Lcom/shabakaty/downloader/br5;->u:[Ljava/lang/Object;

    .line 4
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br5;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oq5;->a()V

    iget v0, p0, Lcom/shabakaty/downloader/oq5;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->r:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/br5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/oq5;->t:Lcom/shabakaty/downloader/br5;

    iget-object v1, v1, Lcom/shabakaty/downloader/br5;->u:[Ljava/lang/Object;

    .line 5
    aget-object v2, v1, v0

    .line 6
    aput-object p1, v1, v0

    return-object v2
.end method
