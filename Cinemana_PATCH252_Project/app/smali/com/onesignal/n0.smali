.class public Lcom/onesignal/n0;
.super Ljava/lang/Object;
.source "OSTriggerController.java"


# instance fields
.field public a:Lcom/onesignal/t;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/t$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/n0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Lcom/onesignal/t;

    invoke-direct {v0, p1}, Lcom/onesignal/t;-><init>(Lcom/onesignal/t$a;)V

    iput-object v0, p0, Lcom/onesignal/n0;->a:Lcom/onesignal/t;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/m0$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    return v3

    :pswitch_0
    const/4 p1, 0x3

    const-string p2, "Attempted to use an invalid operator with a numeric value: "

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5
    iget-object p3, p3, Lcom/onesignal/m0$b;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :pswitch_1
    cmpl-double p3, p1, v0

    if-gtz p3, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    :pswitch_2
    cmpg-double p3, p1, v0

    if-ltz p3, :cond_2

    cmpl-double p3, p1, v0

    if-nez p3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3

    :pswitch_3
    cmpl-double p3, p1, v0

    if-eqz p3, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :pswitch_4
    cmpl-double p3, p1, v0

    if-nez p3, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    :pswitch_5
    cmpg-double p3, p1, v0

    if-gez p3, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3

    :pswitch_6
    cmpl-double p3, p1, v0

    if-lez p3, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/m0$b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p1, "Attempted to use an invalid operator for a string trigger comparison: "

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    iget-object p2, p3, Lcom/onesignal/m0$b;->r:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-static {v1, p1, p2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
