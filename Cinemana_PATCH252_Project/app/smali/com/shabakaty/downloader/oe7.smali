.class public final Lcom/shabakaty/downloader/oe7;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/yr6;


# static fields
.field public static e:Z


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/yq6;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/oe7;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/oe7;->d:Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yq4;->b(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/yq4;->a()Lcom/shabakaty/downloader/yq4;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/kp;->e:Lcom/shabakaty/downloader/kp;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yq4;->c(Lcom/shabakaty/downloader/g31;)Lcom/shabakaty/downloader/pq4;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/lf2;

    new-instance v1, Lcom/shabakaty/downloader/ns6;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/ns6;-><init>(Lcom/shabakaty/downloader/pq4;I)V

    invoke-direct {p2, v1}, Lcom/shabakaty/downloader/lf2;-><init>(Lcom/shabakaty/downloader/pj3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/oe7;->b:Ljava/lang/Object;

    new-instance p2, Lcom/shabakaty/downloader/lf2;

    new-instance v1, Lcom/shabakaty/downloader/ns6;

    .line 5
    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/ns6;-><init>(Lcom/shabakaty/downloader/pq4;I)V

    invoke-direct {p2, v1}, Lcom/shabakaty/downloader/lf2;-><init>(Lcom/shabakaty/downloader/pj3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/oe7;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/oe7;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/ee7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ee7;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/oe7;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/shabakaty/downloader/oe7;->d:Ljava/lang/Object;

    sget-boolean v0, Lcom/shabakaty/downloader/oe7;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/shabakaty/downloader/oe7;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/shabakaty/downloader/oe7;->e:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/shabakaty/downloader/oe7;->e:Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/oe7;->b:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/oe7;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/ee7;

    invoke-direct {p2}, Lcom/shabakaty/downloader/ee7;-><init>()V

    iget-object v0, p0, Lcom/shabakaty/downloader/oe7;->d:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ee7;

    iput-object p2, v0, Lcom/shabakaty/downloader/ee7;->c:Lcom/shabakaty/downloader/ee7;

    iput-object p2, p0, Lcom/shabakaty/downloader/oe7;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/shabakaty/downloader/ee7;->b:Ljava/lang/Object;

    iput-object p1, p2, Lcom/shabakaty/downloader/ee7;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/oe7;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/shabakaty/downloader/oe7;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/oe7;->c:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ee7;

    iget-object v1, v1, Lcom/shabakaty/downloader/ee7;->c:Lcom/shabakaty/downloader/ee7;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/shabakaty/downloader/ee7;->b:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/shabakaty/downloader/ee7;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 6
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    iget-object v1, v1, Lcom/shabakaty/downloader/ee7;->c:Lcom/shabakaty/downloader/ee7;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
