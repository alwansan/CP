.class public final synthetic Lcom/shabakaty/downloader/jw3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/si2$a;
.implements Lcom/shabakaty/downloader/wc0;
.implements Lcom/shabakaty/downloader/px1$a;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/wo2$g;
.implements Lcom/shabakaty/downloader/ze3;
.implements Lcom/shabakaty/downloader/gh2$a;
.implements Lcom/shabakaty/downloader/gg0$a;
.implements Lcom/shabakaty/downloader/kh4;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/jw3;

.field public static final synthetic s:Lcom/shabakaty/downloader/jw3;

.field public static final synthetic t:Lcom/shabakaty/downloader/jw3;

.field public static final synthetic u:Lcom/shabakaty/downloader/jw3;

.field public static final synthetic v:Lcom/shabakaty/downloader/jw3;

.field public static final synthetic w:Lcom/shabakaty/downloader/jw3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/jw3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jw3;->r:Lcom/shabakaty/downloader/jw3;

    new-instance v0, Lcom/shabakaty/downloader/jw3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jw3;->s:Lcom/shabakaty/downloader/jw3;

    new-instance v0, Lcom/shabakaty/downloader/jw3;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jw3;->t:Lcom/shabakaty/downloader/jw3;

    new-instance v0, Lcom/shabakaty/downloader/jw3;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jw3;->u:Lcom/shabakaty/downloader/jw3;

    new-instance v0, Lcom/shabakaty/downloader/jw3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jw3;->v:Lcom/shabakaty/downloader/jw3;

    new-instance v0, Lcom/shabakaty/downloader/jw3;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jw3;->w:Lcom/shabakaty/downloader/jw3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->b()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/shabakaty/downloader/ff2;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/shabakaty/downloader/gg0;->d(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$e$d;

    move-result-object p1

    return-object p1
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/s4;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/s4;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/ro2;

    sget-object v0, Lcom/shabakaty/downloader/wo2;->a:Ljava/util/regex/Pattern;

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public synthetic f(Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/r91;->a(Lcom/shabakaty/downloader/s91;Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 0

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a$a;

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method

.method public h(IIIII)Z
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/bv2;->u:Lcom/shabakaty/downloader/px1$a;

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p2, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p3, v2, :cond_0

    if-ne p4, v1, :cond_0

    if-eq p5, v1, :cond_1

    if-eq p1, v0, :cond_1

    :cond_0
    if-ne p2, v1, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3$c;->p()V

    return-void
.end method
