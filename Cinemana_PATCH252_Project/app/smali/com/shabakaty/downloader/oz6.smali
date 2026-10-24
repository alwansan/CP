.class public final Lcom/shabakaty/downloader/oz6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final d:Lcom/shabakaty/downloader/pk2;

.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "ApplicationAnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/oz6;->d:Lcom/shabakaty/downloader/pk2;

    const-string v0, "19.0.0"

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/oz6;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/oz6;->a:Ljava/lang/String;

    const-string p2, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/oz6;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/oz6;->b:Ljava/util/Map;

    const-string p2, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 4
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/oz6;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/oz6;->c:Ljava/util/Map;

    return-void
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/shabakaty/downloader/tb6;->v:Lcom/shabakaty/downloader/ba6;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/shabakaty/downloader/wx6$a;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wx6$a;->n()Lcom/shabakaty/downloader/sx6;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/sx6;->n(Lcom/shabakaty/downloader/sx6;)Lcom/shabakaty/downloader/sx6$a;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37$b;->j()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v1, Lcom/shabakaty/downloader/sx6;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/sx6;->r(Lcom/shabakaty/downloader/sx6;Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wx6$a;->m(Lcom/shabakaty/downloader/sx6$a;)Lcom/shabakaty/downloader/wx6$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/oz6;->d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    return-object p1
.end method

.method public final d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/wx6;->w()Lcom/shabakaty/downloader/wx6$a;

    move-result-object v0

    iget-wide v1, p1, Lcom/shabakaty/downloader/s27;->c:J

    .line 2
    iget-boolean v3, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 4
    iput-boolean v4, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v3, Lcom/shabakaty/downloader/wx6;

    invoke-static {v3, v1, v2}, Lcom/shabakaty/downloader/wx6;->p(Lcom/shabakaty/downloader/wx6;J)V

    .line 6
    iget v1, p1, Lcom/shabakaty/downloader/s27;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/shabakaty/downloader/s27;->d:I

    .line 7
    iget-boolean v2, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 9
    iput-boolean v4, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 10
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v2, Lcom/shabakaty/downloader/wx6;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/wx6;->o(Lcom/shabakaty/downloader/wx6;I)V

    .line 11
    iget-object v1, p1, Lcom/shabakaty/downloader/s27;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 12
    iget-boolean v2, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 14
    iput-boolean v4, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 15
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v2, Lcom/shabakaty/downloader/wx6;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/wx6;->u(Lcom/shabakaty/downloader/wx6;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/rx6;->p()Lcom/shabakaty/downloader/rx6$a;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/oz6;->e:Ljava/lang/String;

    .line 17
    iget-boolean v3, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 19
    iput-boolean v4, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 20
    :cond_4
    iget-object v3, v1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v3, Lcom/shabakaty/downloader/rx6;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/rx6;->o(Lcom/shabakaty/downloader/rx6;Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/oz6;->a:Ljava/lang/String;

    .line 22
    iget-boolean v3, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v3, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 24
    iput-boolean v4, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 25
    :cond_5
    iget-object v3, v1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v3, Lcom/shabakaty/downloader/rx6;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/rx6;->n(Lcom/shabakaty/downloader/rx6;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b37;

    check-cast v1, Lcom/shabakaty/downloader/rx6;

    .line 27
    iget-boolean v2, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 29
    iput-boolean v4, v0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 30
    :cond_6
    iget-object v2, v0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v2, Lcom/shabakaty/downloader/wx6;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/wx6;->r(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/rx6;)V

    .line 31
    invoke-static {}, Lcom/shabakaty/downloader/sx6;->t()Lcom/shabakaty/downloader/sx6$a;

    move-result-object v1

    .line 32
    iget-object v2, p1, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 33
    invoke-static {}, Lcom/shabakaty/downloader/zx6;->o()Lcom/shabakaty/downloader/zx6$a;

    move-result-object v2

    iget-object v3, p1, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    .line 34
    iget-boolean v5, v2, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v5, :cond_7

    .line 35
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 36
    iput-boolean v4, v2, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 37
    :cond_7
    iget-object v5, v2, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v5, Lcom/shabakaty/downloader/zx6;

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/zx6;->n(Lcom/shabakaty/downloader/zx6;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/b37;

    check-cast v2, Lcom/shabakaty/downloader/zx6;

    .line 39
    iget-boolean v3, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v3, :cond_8

    .line 40
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 41
    iput-boolean v4, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 42
    :cond_8
    iget-object v3, v1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v3, Lcom/shabakaty/downloader/sx6;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/sx6;->q(Lcom/shabakaty/downloader/sx6;Lcom/shabakaty/downloader/zx6;)V

    .line 43
    :cond_9
    iget-boolean v2, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v2, :cond_a

    .line 44
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 45
    iput-boolean v4, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 46
    :cond_a
    iget-object v2, v1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v2, Lcom/shabakaty/downloader/sx6;

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/sx6;->r(Lcom/shabakaty/downloader/sx6;Z)V

    .line 47
    iget-object p1, p1, Lcom/shabakaty/downloader/s27;->e:Ljava/lang/String;

    if-eqz p1, :cond_c

    :try_start_0
    const-string v2, "-"

    const-string v3, ""

    .line 48
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x10

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 51
    sget-object v3, Lcom/shabakaty/downloader/oz6;->d:Lcom/shabakaty/downloader/pk2;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v5, v2

    .line 52
    iget-object p1, v3, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v2, "receiverSessionId %s is not valid for hash: %s"

    invoke-virtual {v3, v2, v5}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    .line 53
    :goto_0
    iget-boolean p1, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz p1, :cond_b

    .line 54
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->j()V

    .line 55
    iput-boolean v4, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 56
    :cond_b
    iget-object p1, v1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/sx6;

    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/sx6;->p(Lcom/shabakaty/downloader/sx6;J)V

    .line 57
    :cond_c
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/wx6$a;->m(Lcom/shabakaty/downloader/sx6$a;)Lcom/shabakaty/downloader/wx6$a;

    return-object v0
.end method
