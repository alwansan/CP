.class final Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
.super Ljava/lang/Object;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Holder;
    }
.end annotation


# instance fields
.field final adapter:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;

.field allButton:Landroid/widget/Button;

.field busy:Z

.field cap:I

.field clearButton:Landroid/widget/Button;

.field closeButton:Landroid/widget/Button;

.field volatile closed:Z

.field final context:Landroid/content/Context;

.field final current:Ljava/lang/Object;

.field final dialog:Landroid/app/Dialog;

.field enqueueFailures:I

.field episodeAttempts:I

.field final episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;",
            ">;"
        }
    .end annotation
.end field

.field filter:Ljava/lang/String;

.field final fragment:Ljava/lang/Object;

.field list:Landroid/widget/ListView;

.field final metadata:Ljava/util/concurrent/ThreadPoolExecutor;

.field final opened:J

.field progress:Landroid/widget/TextView;

.field qualityButton:Landroid/widget/Button;

.field query:Ljava/lang/String;

.field rail:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

.field refreshPosted:Z

.field final repo:Ljava/lang/Object;

.field resolved:I

.field final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final running:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field search:Landroid/widget/EditText;

.field seasonButton:Landroid/widget/Button;

.field final session:Ljava/lang/String;

.field final sizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final sizes:Ljava/util/concurrent/ThreadPoolExecutor;

.field start:Landroid/widget/Button;

.field summary:Landroid/widget/TextView;

.field final vm:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->pool(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->pool(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 132
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->session:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->opened:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->query:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    .line 135
    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->adapter:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizeCache:Ljava/util/Map;

    .line 137
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    const/16 v0, 0x438

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->cap:I

    .line 138
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->fragment:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->vm:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->repo:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->current:Ljava/lang/Object;

    iput-object p5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic lambda$loadEpisode$14(Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;)I
    .locals 0

    .line 188
    iget p0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    iget p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method begin()V
    .locals 8

    .line 213
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.shabakaty.cinemana.ca1.NativeBatchScope"

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->current:Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->fragment:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v0

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    const-string v2, "i"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "permission_required"

    const-string v3, "storage=true"

    invoke-virtual {p0, v1, v3, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "com.shabakaty.downloader.wt2"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "l"

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    const-string v2, "\u0627\u0645\u0646\u062d \u0635\u0644\u0627\u062d\u064a\u0629 \u0627\u0644\u062a\u062e\u0632\u064a\u0646 \u062b\u0645 \u0627\u0636\u063a\u0637 \u0627\u0628\u062f\u0623 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 216
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-boolean v6, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v6, :cond_2

    iget-boolean v6, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    const-string v2, "\u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062f\u0629 \u0623\u064f\u0631\u0633\u0644\u062a \u0645\u0633\u0628\u0642\u064b\u0627 \u0644\u0644\u0637\u0627\u0628\u0648\u0631"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 217
    :cond_4
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    iput v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    const-string v3, "enqueue_plan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->cap:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    .line 218
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    new-instance v7, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0, v4, v2, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda12;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;)V

    const/4 v4, -0x1

    invoke-direct {v6, v4, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    :cond_5
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "begin_error"

    const-string v3, ""

    invoke-virtual {p0, v2, v3, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    const-string v2, "\u062a\u0639\u0630\u0631 \u0628\u062f\u0621 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method bg(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 141
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 142
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumWidth(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    const p1, -0xccccc7

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method dp(I)I
    .locals 1

    .line 139
    int-to-float p1, p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method effective(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;
    .locals 2

    .line 194
    iget v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->manual:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->manual:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->cap:I

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->choose(Ljava/util/List;I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method enqueue(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;",
            ">;II)V"
        }
    .end annotation

    .line 220
    const-string v0, "id="

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v1, :cond_3

    iput-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accepted="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " failed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " count="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueue_complete"

    invoke-virtual {p0, p2, p1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0623\u064f\u0631\u0633\u0644 "

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " \u0637\u0644\u0628\u064b\u0627 \u0644\u0644\u0637\u0627\u0628\u0648\u0631\u061b \u062a\u0627\u0628\u0639 \u062d\u0627\u0644\u062a\u0647\u0627 \u0641\u064a \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-static {p3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    if-lez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " \u00b7 \u062a\u0639\u0630\u0631 "

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void

    .line 221
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->effective(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    move-result-object v5

    .line 222
    :try_start_0
    iget-boolean v6, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v6, :cond_5

    if-eqz v5, :cond_4

    iget-object v6, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0629 \u063a\u064a\u0631 \u0645\u0643\u062a\u0645\u0644\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_5
    :goto_1
    iget-boolean v6, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-eqz v6, :cond_6

    iput-boolean v3, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    const-string v3, "enqueue_skip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason=existing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_6
    sget-object v6, Lcom/shabakaty/cinemana/ca1/BatchDownload;->ADMITTED:Ljava/util/Set;

    iget-object v7, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Delete94;->reenqueue(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_7

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Fresh121;->skipped(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    :try_start_1
    const-string v6, "com.shabakaty.cinemana.ca1.NativeBatchScope"

    iget-object v7, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    iget-object v8, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->fragment:Ljava/lang/Object;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v3

    aput-object v8, v9, v4

    invoke-static {v6, v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    const-string v8, "url"

    iget-object v9, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    const-string v8, "wantedQuality"

    iget-object v9, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->quality:Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "enqueue_dispatch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " quality="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/BatchLog;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, v5, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v5, "m"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v5, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    add-int/lit8 p3, p3, 0x1

    const-string v3, "enqueue_admitted"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/shabakaty/cinemana/ca1/BatchDownload;->ADMITTED:Ljava/util/Set;

    iget-object v5, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v2

    .line 224
    :goto_2
    iput-boolean v4, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 225
    :goto_3
    goto :goto_4

    :catch_1
    move-exception v2

    iget v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueueFailures:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "enqueue_error"

    invoke-virtual {p0, v3, v0, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062a\u0639\u0630\u0631 \u0625\u0631\u0633\u0627\u0644 \u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->laterRefresh()V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;II)V

    const-wide/16 p1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method heartbeat()V
    .locals 4

    .line 145
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " metadata_active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " queued="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sizes_active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sizes_queued="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "heartbeat"

    invoke-virtual {p0, v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda9;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$begin$22$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Ljava/util/List;)V
    .locals 1

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueue(Ljava/util/List;II)V

    return-void
.end method

.method synthetic lambda$begin$23$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;)V
    .locals 6

    .line 218
    const-string v0, "id="

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "existing_check"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->existing(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prepare(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    new-instance p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda11;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    const-string v4, "\u062a\u0639\u0630\u0631 \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u062d\u0644\u0642\u0629\u061b \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    const-string v4, "prepare_error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    new-instance p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda11;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->ui(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-nez p2, :cond_2

    new-instance p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda11;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->ui(Ljava/lang/Runnable;)V

    :cond_2
    throw p1
.end method

.method synthetic lambda$enqueue$24$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Ljava/util/List;II)V
    .locals 0

    .line 226
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->enqueue(Ljava/util/List;II)V

    return-void
.end method

.method synthetic lambda$heartbeat$1$com-shabakaty-cinemana-ca1-BatchDownload$Screen()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->heartbeat()V

    return-void
.end method

.method synthetic lambda$laterRefresh$0$com-shabakaty-cinemana-ca1-BatchDownload$Screen()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refreshPosted:Z

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    :cond_0
    return-void
.end method

.method synthetic lambda$loadEpisode$15$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 3

    .line 192
    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0627\u0644\u062c\u0648\u062f\u0627\u062a: "

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u0627\u0644\u0638\u0627\u0647\u0631\u0629 "

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->visible()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->laterRefresh()V

    return-void
.end method

.method synthetic lambda$loadEpisodes$11$com-shabakaty-cinemana-ca1-BatchDownload$Screen()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->loadEpisodes()V

    return-void
.end method

.method synthetic lambda$loadEpisodes$12$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 0

    .line 173
    const/4 p1, 0x0

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodeAttempts:I

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->loadEpisodes()V

    return-void
.end method

.method synthetic lambda$probe$16$com-shabakaty-cinemana-ca1-BatchDownload$Screen()V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->laterRefresh()V

    return-void
.end method

.method synthetic lambda$probe$17$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;)V
    .locals 10

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "probe@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " quality="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " url="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/BatchLog;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "size_start"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizeCache:Ljava/util/Map;

    iget-object v4, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizeCache:Ljava/util/Map;

    iget-object v4, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->session:Ljava/lang/String;

    iget-object v6, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-static {v1, v4, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->probeSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizeCache:Ljava/util/Map;

    iget-object v8, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-wide v6, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->checked:Z

    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->probing:Z

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_2

    const-string v0, "size_ready"

    goto :goto_1

    :cond_2
    const-string v0, "size_unknown"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda7;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->ui(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$qualities$20$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 203
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->cap:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cap="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->cap:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "quality_global"

    invoke-virtual {p0, p3, p1, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->qualityButton:Landroid/widget/Button;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u0627\u0644\u062c\u0648\u062f\u0629: "

    invoke-static {p3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->cap:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "p"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-boolean p3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    return-void
.end method

.method synthetic lambda$quality$21$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 205
    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->manual:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " index="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->manual:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "quality_individual"

    invoke-virtual {p0, v0, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->effective(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->checked:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    return-void
.end method

.method synthetic lambda$schedule$13$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->loadEpisode(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    return-void
.end method

.method synthetic lambda$seasons$18$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->natural(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method synthetic lambda$seasons$19$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Ljava/util/List;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 201
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "season="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "season_filter"

    invoke-virtual {p0, v0, p1, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->seasonButton:Landroid/widget/Button;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0627\u0644\u0645\u0648\u0633\u0645: "

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget-object p2, p2, p4

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rebuild()V

    return-void
.end method

.method synthetic lambda$show$2$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$show$3$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 3

    .line 151
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    const-string v0, "input_method"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$show$4$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->seasons()V

    return-void
.end method

.method synthetic lambda$show$5$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->qualities()V

    return-void
.end method

.method synthetic lambda$show$6$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->toggleAll()V

    return-void
.end method

.method synthetic lambda$show$7$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    goto :goto_0

    :cond_0
    const-string p1, "all=true"

    const/4 v0, 0x0

    const-string v1, "selection_clear"

    invoke-virtual {p0, v1, p1, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    return-void
.end method

.method synthetic lambda$show$8$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->begin()V

    return-void
.end method

.method synthetic lambda$show$9$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Landroid/content/DialogInterface;)V
    .locals 4

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "age_ms="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->opened:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " resolved="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " total="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dialog_close"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    sget-object p1, Lcom/shabakaty/cinemana/ca1/BatchDownload;->active:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    sput-object v1, Lcom/shabakaty/cinemana/ca1/BatchDownload;->active:Landroid/app/Dialog;

    :cond_0
    sget-object p1, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    if-ne p1, p0, :cond_1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    :cond_1
    return-void
.end method

.method synthetic lambda$ui$10$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Ljava/lang/Runnable;)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method laterRefresh()V
    .locals 4

    .line 144
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refreshPosted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refreshPosted:Z

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda8;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method loadEpisode(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 14

    .line 183
    const-string v0, "id="

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qualities@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/shabakaty/cinemana/ca1/BatchDownload;->CACHE:Ljava/util/Map;

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;->at:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x1d4c0

    cmp-long v12, v8, v10

    if-gez v12, :cond_2

    iget-object v4, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;->variants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    new-instance v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    invoke-direct {v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;-><init>()V

    iget-object v10, v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    iput-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    iget-object v10, v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    iput-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    iget v10, v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    iput v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    iget-object v10, v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->quality:Ljava/lang/Object;

    iput-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->quality:Ljava/lang/Object;

    iget-wide v10, v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    iput-wide v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    iget-wide v10, v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->checked:Z

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v4, "qualities_cache_hit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 186
    :cond_2
    const-string v4, "qualities_start"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v8, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->repo:Ljava/lang/Object;

    const-string v8, "a"

    iget-object v9, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v3

    invoke-static {v4, v8, v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->await(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 187
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    invoke-direct {v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;-><init>()V

    const-string v10, "videoUrl"

    invoke-static {v8, v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    const-string v10, "resolution"

    invoke-static {v8, v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    iget-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->height(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    iget-object v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget v10, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const-string v10, "com.shabakaty.cinemana.domain.models.local.Quality"

    iget-object v11, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    const-string v12, "name"

    invoke-static {v8, v12}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->url:Ljava/lang/String;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v3

    aput-object v8, v13, v6

    const/4 v8, 0x2

    aput-object v12, v13, v8

    invoke-static {v10, v13}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v9, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->quality:Ljava/lang/Object;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_5
    new-instance v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/shabakaty/cinemana/ca1/BatchDownload;->CACHE:Ljava/util/Map;

    iget-object v6, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    new-instance v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;

    invoke-direct {v8, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_3
    iput-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    iput-object v7, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget-object v6, v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 190
    :cond_6
    const-string v5, "qualities_ready"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " season="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " episode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " qualities="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " elapsed_ms="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v1, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    goto :goto_5

    .line 188
    :cond_7
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062c\u0648\u062f\u0629 \u062a\u062d\u0645\u064a\u0644 \u0645\u062a\u0627\u062d\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "\u062a\u0639\u0630\u0631 \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u062c\u0648\u062f\u0627\u062a\u061b \u0627\u0636\u063a\u0637 \u0644\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    const-string v2, "qualities_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    :goto_5
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->ui(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->ui(Ljava/lang/Runnable;)V

    throw v0
.end method

.method loadEpisodes()V
    .locals 8

    .line 168
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->vm:Ljava/lang/Object;

    const-string v1, "v"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 175
    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->episodeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->restoreSelection(Ljava/lang/Object;)V

    const-string v1, "episodes_ready"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elapsed_ms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->opened:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rebuild()V

    .line 177
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 \u062c\u0648\u062f\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0627\u062a: "

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->schedule(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    .line 179
    goto :goto_2

    .line 171
    :cond_3
    :goto_1
    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodeAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodeAttempts:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodeAttempts:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string v0, "episodes_wait"

    const-string v1, "native_cache_empty"

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda5;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    const-string v1, "\u0644\u0645 \u062a\u0635\u0644 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u0644\u0642\u0627\u062a\u061b \u0627\u0636\u063a\u0637 \u0647\u0646\u0627 \u0644\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda6;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    const-string v1, "episodes_error"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062a\u0639\u0630\u0631 \u0642\u0631\u0627\u0621\u0629 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u0644\u0642\u0627\u062a: "

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->session:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "work="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->current:Ljava/lang/Object;

    const-string v3, "nb"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchLog;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method natural(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 180
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method prepare(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    const-string v0, "subtitles"

    const-string v1, "id="

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detail@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v4, "detail_start"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->repo:Ljava/lang/Object;

    const-string v5, "b"

    iget-object v7, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v4, v5, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->await(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget-object v7, v7, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->quality:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    const-string v7, "qualities"

    invoke-static {v5, v7, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "detail_ready"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " subtitles="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->model:Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    :cond_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " elapsed_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->running:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method prioritize()V
    .locals 5

    .line 182
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-gt v0, v1, :cond_2

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    invoke-virtual {p0, v3, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->schedule(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;I)V

    iget-boolean v4, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 4

    .line 195
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->effective(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->checked:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->probing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->priority:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->work:Ljava/lang/Runnable;

    invoke-direct {p1, v2, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;-><init>(ILjava/lang/Runnable;)V

    iput-object p1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->probing:Z

    .line 196
    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    :goto_0
    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;)V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;-><init>(ILjava/lang/Runnable;)V

    iput-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->sizes:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->sizeJob:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 195
    :cond_4
    :goto_1
    return-void
.end method

.method qualities()V
    .locals 6

    .line 202
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u062d\u062f \u0627\u0644\u062c\u0648\u062f\u0629 \u0627\u0644\u0639\u0627\u0645 \u00b7 \u0627\u0644\u0627\u062e\u062a\u064a\u0627\u0631\u0627\u062a \u0627\u0644\u0641\u0631\u062f\u064a\u0629 \u0645\u062d\u0641\u0648\u0638\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda13;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method quality(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 6

    .line 204
    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->resolved:I

    iput-boolean v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->queued:Z

    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->schedule(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u062a\u0644\u0642\u0627\u0626\u064a \u062d\u0633\u0628 \u0627\u0644\u062c\u0648\u062f\u0629 \u0627\u0644\u0639\u0627\u0645\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->bytes(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 205
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void

    .line 204
    :cond_3
    :goto_1
    return-void
.end method

.method rebuild()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    iget-object v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->query:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0627\u0644\u0645\u0648\u0633\u0645 "

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u063a\u064a\u0631 \u0645\u062d\u062f\u062f"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    const-string v1, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062d\u0644\u0642\u0627\u062a \u0628\u0647\u0630\u0627 \u0627\u0644\u0631\u0642\u0645 \u0641\u064a \u0627\u0644\u0645\u0648\u0627\u0633\u0645 \u0627\u0644\u0645\u062e\u062a\u0627\u0631\u0629"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method refresh()V
    .locals 17

    .line 206
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->visible()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 207
    iget-object v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v11, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-boolean v15, v14, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v15, :cond_8

    add-int/lit8 v7, v7, 0x1

    iget-object v15, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    iget-object v15, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->filter:Ljava/lang/String;

    iget-object v6, v14, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, v14, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    iget-object v15, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->query:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    :cond_3
    iget-boolean v6, v14, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-eqz v6, :cond_4

    add-int/lit8 v9, v9, 0x1

    :cond_4
    iget-object v6, v14, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->error:Ljava/lang/String;

    if-eqz v6, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    invoke-virtual {v0, v14}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->effective(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-wide v14, v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    cmp-long v16, v14, v4

    if-gez v16, :cond_6

    goto :goto_1

    :cond_6
    const-wide v14, 0x7fffffffffffffffL

    iget-wide v4, v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    sub-long/2addr v14, v4

    cmp-long v4, v11, v14

    if-gtz v4, :cond_7

    iget-wide v4, v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->size:J

    add-long/2addr v11, v4

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v13, v13, 0x1

    :cond_8
    :goto_2
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 208
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->visible()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-boolean v6, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v6, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    iget-boolean v6, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v6, :cond_a

    iget-boolean v5, v5, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v5, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    .line 209
    :cond_c
    iget-object v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->allButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    const-string v5, "\u0625\u0644\u063a\u0627\u0621 \u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_d
    const-string v5, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->clearButton:Landroid/widget/Button;

    if-lez v7, :cond_f

    if-eqz v1, :cond_e

    if-eq v4, v7, :cond_f

    :cond_e
    const/4 v1, 0x0

    goto :goto_5

    :cond_f
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->summary:Landroid/widget/TextView;

    if-nez v7, :cond_10

    const-string v3, "\u0644\u0645 \u062a\u064f\u062d\u062f\u062f \u062d\u0644\u0642\u0627\u062a"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u062d\u0644\u0642\u0629 \u0645\u062d\u062f\u062f\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    const-string v5, ""

    if-lez v8, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " \u062e\u0627\u0631\u062c \u0627\u0644\u0639\u0631\u0636 \u0627\u0644\u062d\u0627\u0644\u064a"

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_11
    move-object v6, v5

    :goto_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v13, :cond_12

    const-string v6, "\u062d\u062c\u0645 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0627\u0644\u0625\u062c\u0645\u0627\u0644\u064a: "

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_12
    const-string v6, "\u062d\u062c\u0645 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0627\u0644\u0645\u0639\u0631\u0648\u0641: "

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v13, v7, :cond_13

    const-string v6, "\u0644\u0645 \u064a\u064f\u0639\u0631\u0641 \u0628\u0639\u062f"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_13
    invoke-static {v11, v12}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->bytes(J)Ljava/lang/String;

    move-result-object v6

    :goto_8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v13, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u0628\u062d\u062c\u0645 \u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_14
    move-object v4, v5

    :goto_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v9, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\u062c\u0627\u0631\u064d \u0642\u0631\u0627\u0621\u0629 "

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u062d\u0644\u0642\u0629"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_15
    move-object v4, v5

    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v10, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\u062a\u0639\u0630\u0631 \u062a\u062c\u0647\u064a\u0632 "

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u062d\u0644\u0642\u0629\u061b \u0623\u0639\u062f \u0627\u0644\u0645\u062d\u0627\u0648\u0644\u0629"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_16
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->seasonButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->qualityButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->allButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->clearButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closeButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 212
    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->start:Landroid/widget/Button;

    if-lez v7, :cond_17

    if-nez v9, :cond_17

    if-nez v10, :cond_17

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-nez v3, :cond_17

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->start:Landroid/widget/Button;

    iget-boolean v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-eqz v2, :cond_18

    const-string v2, "\u062c\u0627\u0631\u064d \u0625\u0631\u0633\u0627\u0644 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0644\u0644\u0637\u0627\u0628\u0648\u0631\u2026"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_18
    const-string v2, "\u0627\u0628\u062f\u0623 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->adapter:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rail:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rail:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->invalidate()V

    :cond_19
    return-void
.end method

.method schedule(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;I)V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->loading:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->queued:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->job:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->job:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->priority:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->job:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->queued:Z

    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda3;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    invoke-direct {v0, p2, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->job:Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->metadata:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method seasons()V
    .locals 6

    .line 200
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda23;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0643\u0644 \u0627\u0644\u0645\u0648\u0627\u0633\u0645"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0627\u0644\u0645\u0648\u0633\u0645 "

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u0644\u0645\u0648\u0633\u0645"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda24;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method show()V
    .locals 16

    .line 147
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->current:Ljava/lang/Object;

    const-string v3, "kind"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->current:Ljava/lang/Object;

    const-string v3, "enTitle"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "dialog_open"

    invoke-virtual {v0, v3, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v6

    invoke-virtual {v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v7

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    const v4, -0xe8e8e5

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 149
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v6, "\u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v10, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v7, 0x108004f

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v7, -0x1

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageButton;->setColorFilter(I)V

    const v9, -0xd6d6d1

    invoke-virtual {v0, v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v12, "\u0627\u0644\u0628\u062d\u062b \u0628\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v13

    const/16 v14, 0x28

    invoke-virtual {v0, v14}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v15

    invoke-direct {v12, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v12

    iput-object v12, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closeButton:Landroid/widget/Button;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x40

    invoke-virtual {v0, v15}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v15

    invoke-virtual {v0, v14}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v4

    invoke-direct {v13, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda15;

    invoke-direct {v4, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda15;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const v5, -0x47473e

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const-string v5, "\u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629 \u0628\u0627\u0644\u0636\u0628\u0637\u060c \u0645\u062b\u0644 7"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v9

    invoke-virtual {v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v12

    invoke-virtual {v4, v9, v10, v12, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v8

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 151
    new-instance v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda16;

    invoke-direct {v4, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda16;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->search:Landroid/widget/EditText;

    new-instance v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;

    invoke-direct {v6, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$1;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v6, "\u0627\u0644\u0645\u0648\u0633\u0645: \u0643\u0644 \u0627\u0644\u0645\u0648\u0627\u0633\u0645"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->seasonButton:Landroid/widget/Button;

    const-string v6, "\u0627\u0644\u062c\u0648\u062f\u0629: 1080p"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->qualityButton:Landroid/widget/Button;

    const-string v6, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->allButton:Landroid/widget/Button;

    .line 154
    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->seasonButton:Landroid/widget/Button;

    iget-object v9, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->qualityButton:Landroid/widget/Button;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->allButton:Landroid/widget/Button;

    const/4 v13, 0x3

    new-array v15, v13, [Landroid/widget/Button;

    aput-object v6, v15, v10

    aput-object v9, v15, v2

    aput-object v12, v15, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v13, :cond_0

    aget-object v9, v15, v6

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v14}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v13

    invoke-direct {v12, v10, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v13

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v14

    invoke-virtual {v12, v13, v10, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x3

    const/16 v14, 0x28

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    const-string v4, "\u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u062a\u062d\u062f\u064a\u062f"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->clearButton:Landroid/widget/Button;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->clearButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x24

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->clearButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    const-string v4, "\u062c\u0627\u0631\u064d \u062c\u0644\u0628 \u0627\u0644\u0645\u0648\u0627\u0633\u0645 \u0648\u0627\u0644\u062d\u0644\u0642\u0627\u062a\u2026"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->progress:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    new-instance v5, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/shabakaty/cinemana/ca1/Enhancements$DragList;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v10}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xe8e8e5

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->adapter:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Adapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v2, v0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rail:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rail:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x18

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v6

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;

    invoke-direct {v4, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 159
    const-string v2, "\u0627\u0628\u062f\u0623 \u0627\u0644\u062a\u062d\u0645\u064a\u0644"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->start:Landroid/widget/Button;

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->start:Landroid/widget/Button;

    const v4, -0x39d7d8

    invoke-virtual {v0, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v4

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v4

    invoke-virtual {v2, v10, v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->start:Landroid/widget/Button;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const-string v2, "\u0644\u0645 \u062a\u064f\u062d\u062f\u062f \u062d\u0644\u0642\u0627\u062a"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->summary:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->summary:Landroid/widget/TextView;

    const v3, -0xd6d6d2

    invoke-virtual {v0, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->summary:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->seasonButton:Landroid/widget/Button;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda17;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->qualityButton:Landroid/widget/Button;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda18;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->allButton:Landroid/widget/Button;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda19;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->clearButton:Landroid/widget/Button;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda20;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->start:Landroid/widget/Button;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda21;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda22;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    sput-object v1, Lcom/shabakaty/cinemana/ca1/BatchDownload;->active:Landroid/app/Dialog;

    sput-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    .line 163
    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v10

    invoke-direct {v2, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Landroid/view/Window;->setLayout(II)V

    .line 164
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->bulk(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->loadEpisodes()V

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->heartbeat()V

    .line 165
    return-void
.end method

.method text(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    .line 140
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result p2

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result p1

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x800013

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method toggle(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 3

    .line 228
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "selection"

    invoke-virtual {p0, v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->schedule(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;I)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    :cond_2
    :goto_0
    return-void
.end method

.method toggleAll()V
    .locals 6

    .line 199
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->visible()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-boolean v5, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v5, :cond_0

    iget-boolean v4, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-boolean v5, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z

    if-nez v5, :cond_2

    xor-int/lit8 v5, v1, 0x1

    iput-boolean v5, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    iget-boolean v5, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->schedule(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;I)V

    invoke-virtual {p0, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->probe(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    xor-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "selection_all"

    invoke-virtual {p0, v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->refresh()V

    return-void
.end method

.method ui(Ljava/lang/Runnable;)V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda14;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method visible()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
