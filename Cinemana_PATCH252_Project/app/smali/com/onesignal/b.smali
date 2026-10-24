.class public Lcom/onesignal/b;
.super Lcom/shabakaty/downloader/i35$c;
.source "DraggableRelativeLayout.java"


# instance fields
.field public a:I

.field public final synthetic b:Lcom/onesignal/c;


# direct methods
.method public constructor <init>(Lcom/onesignal/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/b;->b:Lcom/onesignal/c;

    invoke-direct {p0}, Lcom/shabakaty/downloader/i35$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/onesignal/b;->b:Lcom/onesignal/c;

    .line 2
    iget-object p1, p1, Lcom/onesignal/c;->u:Lcom/onesignal/c$b;

    .line 3
    iget p1, p1, Lcom/onesignal/c$b;->d:I

    return p1
.end method

.method public b(Landroid/view/View;II)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/onesignal/b;->b:Lcom/onesignal/c;

    .line 2
    iget-object p3, p1, Lcom/onesignal/c;->u:Lcom/onesignal/c$b;

    .line 3
    iget-boolean v0, p3, Lcom/onesignal/c$b;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget p1, p3, Lcom/onesignal/c$b;->b:I

    return p1

    .line 5
    :cond_0
    iput p2, p0, Lcom/onesignal/b;->a:I

    .line 6
    iget v0, p3, Lcom/onesignal/c$b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget v0, p3, Lcom/onesignal/c$b;->c:I

    if-lt p2, v0, :cond_1

    .line 8
    iget-object p1, p1, Lcom/onesignal/c;->r:Lcom/onesignal/c$a;

    if-eqz p1, :cond_1

    .line 9
    check-cast p1, Lcom/onesignal/k;

    .line 10
    iget-object p1, p1, Lcom/onesignal/k;->a:Lcom/onesignal/m;

    .line 11
    iput-boolean v1, p1, Lcom/onesignal/m;->i:Z

    .line 12
    :cond_1
    iget p1, p3, Lcom/onesignal/c$b;->b:I

    if-ge p2, p1, :cond_4

    return p1

    .line 13
    :cond_2
    iget v0, p3, Lcom/onesignal/c$b;->c:I

    if-gt p2, v0, :cond_3

    .line 14
    iget-object p1, p1, Lcom/onesignal/c;->r:Lcom/onesignal/c$a;

    if-eqz p1, :cond_3

    .line 15
    check-cast p1, Lcom/onesignal/k;

    .line 16
    iget-object p1, p1, Lcom/onesignal/k;->a:Lcom/onesignal/m;

    .line 17
    iput-boolean v1, p1, Lcom/onesignal/m;->i:Z

    .line 18
    :cond_3
    iget p1, p3, Lcom/onesignal/c$b;->b:I

    if-le p2, p1, :cond_4

    return p1

    :cond_4
    return p2
.end method

.method public h(Landroid/view/View;FF)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/onesignal/b;->b:Lcom/onesignal/c;

    .line 2
    iget-object p2, p1, Lcom/onesignal/c;->u:Lcom/onesignal/c$b;

    .line 3
    iget v0, p2, Lcom/onesignal/c$b;->b:I

    .line 4
    iget-boolean v1, p1, Lcom/onesignal/c;->t:Z

    if-nez v1, :cond_3

    .line 5
    iget v1, p2, Lcom/onesignal/c$b;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 6
    iget v1, p0, Lcom/onesignal/b;->a:I

    .line 7
    iget v4, p2, Lcom/onesignal/c$b;->j:I

    if-gt v1, v4, :cond_0

    .line 8
    iget v1, p2, Lcom/onesignal/c$b;->h:I

    int-to-float v1, v1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_3

    .line 9
    :cond_0
    iget v0, p2, Lcom/onesignal/c$b;->i:I

    .line 10
    iput-boolean v3, p1, Lcom/onesignal/c;->t:Z

    .line 11
    iget-object p1, p1, Lcom/onesignal/c;->r:Lcom/onesignal/c$a;

    if-eqz p1, :cond_3

    .line 12
    check-cast p1, Lcom/onesignal/k;

    .line 13
    iget-object p1, p1, Lcom/onesignal/k;->a:Lcom/onesignal/m;

    .line 14
    invoke-virtual {p1, v2}, Lcom/onesignal/m;->f(Lcom/onesignal/y1$f;)V

    goto :goto_0

    .line 15
    :cond_1
    iget v1, p0, Lcom/onesignal/b;->a:I

    .line 16
    iget v4, p2, Lcom/onesignal/c$b;->j:I

    if-lt v1, v4, :cond_2

    .line 17
    iget v1, p2, Lcom/onesignal/c$b;->h:I

    int-to-float v1, v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_3

    .line 18
    :cond_2
    iget v0, p2, Lcom/onesignal/c$b;->i:I

    .line 19
    iput-boolean v3, p1, Lcom/onesignal/c;->t:Z

    .line 20
    iget-object p1, p1, Lcom/onesignal/c;->r:Lcom/onesignal/c$a;

    if-eqz p1, :cond_3

    .line 21
    check-cast p1, Lcom/onesignal/k;

    .line 22
    iget-object p1, p1, Lcom/onesignal/k;->a:Lcom/onesignal/m;

    .line 23
    invoke-virtual {p1, v2}, Lcom/onesignal/m;->f(Lcom/onesignal/y1$f;)V

    .line 24
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/onesignal/b;->b:Lcom/onesignal/c;

    .line 25
    iget-object p2, p1, Lcom/onesignal/c;->s:Lcom/shabakaty/downloader/i35;

    .line 26
    iget-object p1, p1, Lcom/onesignal/c;->u:Lcom/onesignal/c$b;

    .line 27
    iget p1, p1, Lcom/onesignal/c$b;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/i35;->u(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/onesignal/b;->b:Lcom/onesignal/c;

    sget-object p2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public i(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
