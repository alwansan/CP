.class public final Lcom/shabakaty/downloader/bt5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/bt5;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/bt5;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/bt5;->r:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/bt5;->r:I

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/bt5;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/bt5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 3
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/shabakaty/downloader/bt5;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/di6;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/bt5;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/di6;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->h:Lcom/shabakaty/downloader/dp6;

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/bt5;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ek5;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 13
    invoke-static {}, Lcom/google/android/gms/measurement/internal/d;->g()V

    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
