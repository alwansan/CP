.class public final synthetic Lcom/shabakaty/downloader/vr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/yr;

.field public final synthetic t:Lcom/shabakaty/downloader/cx4;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/cx4;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/vr;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vr;->s:Lcom/shabakaty/downloader/yr;

    iput-object p2, p0, Lcom/shabakaty/downloader/vr;->t:Lcom/shabakaty/downloader/cx4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/vr;->r:I

    const/4 v1, 0x0

    const-string v2, "Use case "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vr;->s:Lcom/shabakaty/downloader/yr;

    iget-object v3, p0, Lcom/shabakaty/downloader/vr;->t:Lcom/shabakaty/downloader/cx4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " RESET"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/fx4;->h(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yr;->w(Z)V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->z()V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v2, Lcom/shabakaty/downloader/yr$e;->u:Lcom/shabakaty/downloader/yr$e;

    if-ne v1, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->t()V

    :cond_0
    return-void

    .line 10
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr;->s:Lcom/shabakaty/downloader/yr;

    iget-object v3, p0, Lcom/shabakaty/downloader/vr;->t:Lcom/shabakaty/downloader/cx4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INACTIVE"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fx4;->g(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->z()V

    return-void

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/vr;->s:Lcom/shabakaty/downloader/yr;

    iget-object v3, p0, Lcom/shabakaty/downloader/vr;->t:Lcom/shabakaty/downloader/cx4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ACTIVE"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v5, v3, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 20
    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/fx4;->e(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    .line 21
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    iget-object v3, v3, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 23
    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/fx4;->h(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->z()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Failed to set already detached use case active"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr;->s:Lcom/shabakaty/downloader/yr;

    iget-object v3, p0, Lcom/shabakaty/downloader/vr;->t:Lcom/shabakaty/downloader/cx4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " UPDATED"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v3, v3, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/fx4;->h(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    .line 32
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->z()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
