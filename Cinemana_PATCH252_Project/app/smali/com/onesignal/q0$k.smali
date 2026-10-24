.class public final Lcom/onesignal/q0$k;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/f1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForPushToken completed with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x6

    if-ge p2, v0, :cond_2

    .line 3
    invoke-static {}, Lcom/onesignal/c1;->b()Lcom/onesignal/q1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/t1;->o()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 4
    sget v3, Lcom/onesignal/q0;->k:I

    if-eq v3, v0, :cond_1

    if-ge v3, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    .line 5
    :cond_1
    sput p2, Lcom/onesignal/q0;->k:I

    goto :goto_0

    .line 6
    :cond_2
    sget v3, Lcom/onesignal/q0;->k:I

    if-ge v3, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 7
    sput p2, Lcom/onesignal/q0;->k:I

    .line 8
    :cond_4
    :goto_0
    sput-object p1, Lcom/onesignal/q0;->L:Ljava/lang/String;

    .line 9
    sput-boolean v0, Lcom/onesignal/q0;->N:Z

    .line 10
    sget-object p2, Lcom/onesignal/q0;->b:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Lcom/onesignal/q0;->p(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p2

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v1, p2, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 14
    iput-object p1, p2, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 15
    iget-object p1, p2, Lcom/onesignal/OSSubscriptionState;->r:Lcom/shabakaty/downloader/l33;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    .line 16
    :cond_6
    :goto_1
    invoke-static {}, Lcom/onesignal/q0;->c()V

    return-void
.end method
