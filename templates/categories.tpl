<div class="categories" itemscope itemtype="http://www.schema.org/ItemList">
    <!-- BEGIN categories -->
    <h2>{categories.name}</h2>
    <div class="row categories-header hidden-xs hidden-sm">
        <div class="col-md-7 col-xs-12"><div class="header-title">[[category:category]]</div></div>
        <div class="col-md-1"><div class="header-title">[[global:topics]]</div></div>
        <div class="col-md-1"><div class="header-title">[[global:posts]]</div></div>
        <div class="col-md-3"><div class="header-title">Last Post</div></div>
    </div>
    <!-- BEGIN categories.children -->
    <div class="row" component="categories/category" data-cid="{../cid}" data-numRecentReplies="1">
        <div class="col-md-7 col-xs-12">
            <div class="category-info">
                <div class="category-info-content">
                    <div class="category-icon">
                        <i class="fa fa-fw {../icon}"></i>
                    </div>
                    <!-- IF ../link -->
                    <a class="category-title" href="{../link}" itemprop="url" title="{../name}">
                    <!-- ELSE -->
                    <a class="category-title" href="{config.relative_path}/category/{../slug}" itemprop="url" title="{../name}">
                    <!-- ENDIF ../link -->
                    {../name}
                    </a>

                    <div class="category-description">
                        {../descriptionParsed}
                    </div>
                </div>

                <div class="subcategories">
                    <!-- BEGIN ../children -->
                    <div class="subcategory">
                        <i class="fa fa-fw {../icon} subcategory-icon"></i>
                        <!-- IF ../link -->
                        <a class="subcategory-title" href="{../link}" title="{../name}">{../name}</a>
                        <!-- ELSE -->
                        <a class="subcategory-title" href="{config.relative_path}/category/{../slug}" title="{../name}">{../name}</a>
                        <!-- ENDIF ../link -->
                    </div>
                    <!-- END ../children -->
                </div>
            </div>
        </div>
        <div class="col-md-1 hidden-xs hidden-sm">
            <div class="total-topic-count human-readable-number" title="{../totalTopicCount}">
                {../totalTopicCount}
            </div>
        </div>
        <div class="col-md-1 hidden-xs hidden-sm">
            <div class="total-post-count human-readable-number" title="{../totalPostCount}">
                {../totalPostCount}
            </div>
        </div>
        <div class="col-md-3 hidden-xs hidden-sm">
            <div class="teaser" component="topic/teaser">
                <!-- BEGIN ../posts -->
        	    <!-- IF @first -->
                <div component="category/posts">
                    <a href="{config.relative_path}/user/{../user.userslug}">
                		<!-- IF ../user.picture -->
                		<img class="user-avatar" title="{../user.username}" alt="{../user.username}" src="{../user.picture}" />
                		<!-- ELSE -->
                		<div class="user-icon" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</div>
                		<!-- ENDIF ../user.picture -->
            		</a>

                    <a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
                        {../topic.title}
            		    <small class="detail">by {../user.username}</small>
            			<small class="timeago" title="{../timestampISO}"></small>
            		</a>
        		</div>
        		<!-- ENDIF @first -->
        	    <!-- END ../posts -->

        	    <!-- IF !../posts.length -->
    			[[category:no_new_posts]]
    	        <!-- ENDIF !../posts.length -->
            </div>
        </div>
    </div>
    <!-- END categories.children -->
    <!-- END categories -->
</div>