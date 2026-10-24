.class public final Lcom/shabakaty/downloader/da5;
.super Lcom/shabakaty/downloader/ra5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ea5;Lcom/shabakaty/downloader/na5;Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/da5;->b:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/da5;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/da5;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ra5;-><init>(Lcom/shabakaty/downloader/na5;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/na5;Lcom/shabakaty/downloader/ba5;Lcom/shabakaty/downloader/hc5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/da5;->b:I

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/da5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/da5;->d:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ra5;-><init>(Lcom/shabakaty/downloader/na5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/da5;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/da5;->d:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ea5;

    iget-object v0, v0, Lcom/shabakaty/downloader/ea5;->t:Lcom/shabakaty/downloader/ba5;

    iget-object v1, p0, Lcom/shabakaty/downloader/da5;->c:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/gb0;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/da5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ba5;

    iget-object v1, p0, Lcom/shabakaty/downloader/da5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/hc5;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ba5;->e(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v1, Lcom/shabakaty/downloader/hc5;->s:Lcom/shabakaty/downloader/gb0;

    .line 6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/hc5;->t:Lcom/shabakaty/downloader/tc5;

    const-string v2, "null reference"

    .line 8
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v3, v1, Lcom/shabakaty/downloader/tc5;->t:Lcom/shabakaty/downloader/gb0;

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GACConnecting"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    goto :goto_1

    .line 13
    :cond_1
    iput-boolean v5, v0, Lcom/shabakaty/downloader/ba5;->n:Z

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc5;->W0()Lcom/shabakaty/downloader/uw1;

    move-result-object v3

    .line 15
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-object v3, v0, Lcom/shabakaty/downloader/ba5;->o:Lcom/shabakaty/downloader/uw1;

    .line 17
    iget-boolean v2, v1, Lcom/shabakaty/downloader/tc5;->u:Z

    .line 18
    iput-boolean v2, v0, Lcom/shabakaty/downloader/ba5;->p:Z

    .line 19
    iget-boolean v1, v1, Lcom/shabakaty/downloader/tc5;->v:Z

    .line 20
    iput-boolean v1, v0, Lcom/shabakaty/downloader/ba5;->q:Z

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ba5;->g()V

    goto :goto_1

    .line 22
    :cond_2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/ba5;->l:Z

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ba5;->i()V

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ba5;->g()V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
