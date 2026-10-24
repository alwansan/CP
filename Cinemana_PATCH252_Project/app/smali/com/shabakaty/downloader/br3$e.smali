.class public final Lcom/shabakaty/downloader/br3$e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ni5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/br3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/qc7;

.field public b:J

.field public final synthetic c:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/br3$e;->c:Lcom/shabakaty/downloader/br3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/br3$e;->b:J

    return-void
.end method


# virtual methods
.method public final j()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/br3$e;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/br3$e;->b:J

    return-wide v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p5, p0, Lcom/shabakaty/downloader/br3$e;->a:Lcom/shabakaty/downloader/qc7;

    if-eqz p5, :cond_3

    .line 2
    check-cast p5, Lcom/shabakaty/downloader/pd7;

    .line 3
    iget-object p5, p5, Lcom/shabakaty/downloader/pd7;->f:Lcom/shabakaty/downloader/o57;

    if-eqz p5, :cond_2

    .line 4
    check-cast p5, Lcom/shabakaty/downloader/vh5;

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/yw;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/np4;

    const/4 v2, 0x5

    invoke-direct {v1, p5, p1, p2, v2}, Lcom/shabakaty/downloader/np4;-><init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p5, p2, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/shabakaty/downloader/ue7;->a:Lcom/shabakaty/downloader/wn5;

    sget-object p5, Lcom/shabakaty/downloader/me7;->a:Lcom/shabakaty/downloader/wn5;

    .line 13
    invoke-static {p1, p2, p5}, Lcom/shabakaty/downloader/ic6;->a(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/wn5;Lcom/shabakaty/downloader/wn5;)Lcom/shabakaty/downloader/nb3;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 15
    iget-object p3, p1, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string p4, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, p4, p2}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size524288"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_0
    new-instance p2, Lcom/shabakaty/downloader/bl5;

    invoke-direct {p2, p0, p3, p4}, Lcom/shabakaty/downloader/bl5;-><init>(Lcom/shabakaty/downloader/br3$e;J)V

    .line 19
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No GoogleApiClient available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
