.class public final synthetic Lcom/shabakaty/downloader/ns6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/pj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/pq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pq4;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/ns6;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    return-void

    .line 6
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    const-class v0, [B

    iget v1, p0, Lcom/shabakaty/downloader/ns6;->a:I

    const-string v2, "proto"

    const-string v3, "json"

    const-string v4, "FIREBASE_ML_SDK"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/o31;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/kn6;->r:Lcom/shabakaty/downloader/aq4;

    .line 4
    invoke-interface {v1, v4, v0, v2, v3}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/o31;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/s07;->r:Lcom/shabakaty/downloader/aq4;

    .line 8
    invoke-interface {v1, v4, v0, v3, v2}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/o31;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v3, Lcom/shabakaty/downloader/u07;->r:Lcom/shabakaty/downloader/aq4;

    .line 12
    invoke-interface {v1, v4, v0, v2, v3}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_3
    iget-object v1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/o31;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v2, Lcom/shabakaty/downloader/us6;->r:Lcom/shabakaty/downloader/aq4;

    .line 16
    invoke-interface {v1, v4, v0, v3, v2}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_4
    iget-object v1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    .line 18
    new-instance v2, Lcom/shabakaty/downloader/o31;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object v3, Lcom/shabakaty/downloader/at6;->r:Lcom/shabakaty/downloader/aq4;

    .line 20
    invoke-interface {v1, v4, v0, v2, v3}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    return-object v0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ns6;->b:Lcom/shabakaty/downloader/pq4;

    .line 22
    new-instance v3, Lcom/shabakaty/downloader/o31;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/shabakaty/downloader/hn6;->r:Lcom/shabakaty/downloader/aq4;

    .line 24
    invoke-interface {v1, v4, v0, v3, v2}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
