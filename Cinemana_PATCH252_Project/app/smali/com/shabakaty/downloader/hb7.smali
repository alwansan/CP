.class public final Lcom/shabakaty/downloader/hb7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/fb7;


# static fields
.field public static final a:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/in6;

    const-string v1, "com.google.android.gms.measurement"

    .line 1
    invoke-static {v1}, Lcom/shabakaty/downloader/lm6;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/in6;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/in6;->b(Ljava/lang/String;Z)Lcom/shabakaty/downloader/on6;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/hb7;->a:Lcom/shabakaty/downloader/on6;

    const-wide/high16 v1, -0x3ff8000000000000L    # -3.0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ym6;

    .line 4
    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/ym6;-><init>(Lcom/shabakaty/downloader/in6;Ljava/lang/Double;)V

    .line 5
    sput-object v2, Lcom/shabakaty/downloader/hb7;->b:Lcom/shabakaty/downloader/on6;

    const-wide/16 v1, -0x2

    const-string v3, "measurement.test.int_flag"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lcom/shabakaty/downloader/in6;->a(Ljava/lang/String;J)Lcom/shabakaty/downloader/on6;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/hb7;->c:Lcom/shabakaty/downloader/on6;

    const-wide/16 v1, -0x1

    const-string v3, "measurement.test.long_flag"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/shabakaty/downloader/in6;->a(Ljava/lang/String;J)Lcom/shabakaty/downloader/on6;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/hb7;->d:Lcom/shabakaty/downloader/on6;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/cn6;

    const-string v2, "measurement.test.string_flag"

    const-string v3, "---"

    .line 9
    invoke-direct {v1, v0, v2, v3}, Lcom/shabakaty/downloader/cn6;-><init>(Lcom/shabakaty/downloader/in6;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-object v1, Lcom/shabakaty/downloader/hb7;->e:Lcom/shabakaty/downloader/on6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    sget-object v0, Lcom/shabakaty/downloader/hb7;->b:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    sget-object v0, Lcom/shabakaty/downloader/hb7;->c:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    sget-object v0, Lcom/shabakaty/downloader/hb7;->d:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/hb7;->e:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/hb7;->a:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
